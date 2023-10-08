// -----------------------------------------------------------------------------
// File         : sec_soft.c
// Description  : Full-software implementation of second-order filter
//                on nios_siso system
// Author       : Sabih Gerez, University of Twente
// Creation date: August 26, 2015
// -----------------------------------------------------------------------------
// $Rev: 1$
// $Author: gerezsh$
// $Date: Thu Sep 29 12:04:15 CEST 2022$
// $Log$
// -----------------------------------------------------------------------------


#include "sys/alt_stdio.h"
#include "system.h"


// start address of memory space (GP_CUSTOM_0_BASE is in system.h)
volatile unsigned int *IO_CUSTOM=(unsigned int *)GP_CUSTOM_0_BASE;

// declare some mnemonics
#define IN_TRIGGER 8
#define OUT_TRIGGER 9
#define IN_BUSY 10
#define OUT_BUSY 11
#define STOP_SIM 12
#define MODE 13
#define MULT_MODE 14

static inline int coeff_load(int a, int b, int c, int d,int e,int f,int g,int h)
{
	// start loading of coeff_memory 
	IO_CUSTOM[MODE] = 1;
	
	IO_CUSTOM[0] = a;
	IO_CUSTOM[1] = b;
	IO_CUSTOM[2] = c;
	IO_CUSTOM[3] = d;
	IO_CUSTOM[4] = e;
	IO_CUSTOM[5] = f;
	IO_CUSTOM[6] = g;
	IO_CUSTOM[7] = h;
	 
    // end loading of coeff_memory
	IO_CUSTOM[MODE] = 0;

	return 0;
}

static inline void mult3(int left1, int right1, int left2, int right2, int left3, int right3, int * res1, int * res2, int * res3)
{
  	IO_CUSTOM[MODE] = 2;
	
	IO_CUSTOM[0] = left1;
	IO_CUSTOM[1] = right1;
	IO_CUSTOM[2] = left2;
	IO_CUSTOM[3] = right2;
	IO_CUSTOM[4] = left3;
	IO_CUSTOM[5] = right3;
	 
    // end loading of coeff_memory
	IO_CUSTOM[MODE] = 4;
	
	int temp1 = IO_CUSTOM[0];
	int temp2 = IO_CUSTOM[1];
	int temp3 = IO_CUSTOM[2];
	
	IO_CUSTOM[MODE] = 0;
	
	*res1 = (temp1 >> 8);
	*res2 = (temp2 >> 8);
	*res3 = (temp3 >> 8);
}

static inline void filter_mul_inputs_bx(int x, int * res1, int * res2, int * res3)
{
  	IO_CUSTOM[MODE] = 2;
  	IO_CUSTOM[MULT_MODE] = 1;
	
	IO_CUSTOM[0] = x;
	 
    // end loading of coeff_memory
	IO_CUSTOM[MODE] = 4;
	
	int temp1 = IO_CUSTOM[0];
	int temp2 = IO_CUSTOM[1];
	int temp3 = IO_CUSTOM[2];
	
	IO_CUSTOM[MODE] = 0;
	
	*res1 = (temp1 >> 8);
	*res2 = (temp2 >> 8);
	*res3 = (temp3 >> 8);
	IO_CUSTOM[MULT_MODE] = 0;
}

static inline void filter_mul_inputs_ay(int y, int * res1, int * res2)
{
  	IO_CUSTOM[MODE] = 2;
  	IO_CUSTOM[MULT_MODE] = 1;
	
	IO_CUSTOM[1] = y;
	 
    // end loading of coeff_memory
	IO_CUSTOM[MODE] = 4;
	
	int temp1 = IO_CUSTOM[3];
	int temp2 = IO_CUSTOM[4];
	
	IO_CUSTOM[MODE] = 0;
	
	*res1 = (temp1 >> 8);
	*res2 = (temp2 >> 8);
	IO_CUSTOM[MULT_MODE] = 0;
}


// top-level function name is always called "main"
int main()
{
  // print to UART
  alt_putstr("--> Start of sec_soft <--\n");
  
  // state variables
  int z1 = 0;
  int z2 = 0;

  // constants
  const int b0 = 140;
  const int b1 = -280;
  const int b2 = 140;
  const int a1 = 225;
  const int a2 = -80;
  coeff_load(b0,b1,b2,a1,a2,0,0,0);

  // temporary variables
  int m1, m2, m3, m4, m5;
  int z1_next, z2_temp, z2_next, y;


  // repeat until end of input file is reached
  int block_count = 0;
  while (1) {

    // initiate data transfer from testbench to ioport
    IO_CUSTOM[IN_TRIGGER] = 1;
    // wait until transfer is ready
    while (IO_CUSTOM[IN_BUSY]) 
      ;

    // iteration indices
    int i,j;

    for (i=0; i <= 7; i++) {
      // each data transfer gives two signal samples
      int current_pair = IO_CUSTOM[i];

      // arrays of length two, to hold split input and output
      int in_pair[2], out_pair[2];

      // split pair; think of sign extension
      if (current_pair & 0x00008000)  // negative?
         in_pair[0] = current_pair | 0xFFFF0000;
      else
         in_pair[0] = current_pair & 0x0000FFFF;
      in_pair[1] = current_pair >> 16; // shift automatially extends sign

      // process both samples

      for (j=0; j <= 1; j++) {
        // multiplications and additions
        filter_mul_inputs_bx(in_pair[j], &m1, &m2, &m4);
   
        y  = z2 + m1;
        
        filter_mul_inputs_ay(y, &m3, &m5);
        
        z1_next = m4 + m5;
        z2_temp = z1 + m2;
        z2_next = z2_temp + m3;
        // state uptdate
        z1 = z1_next;
        z2 = z2_next;
        // result sample
        out_pair[j] = y;
      }
      // write output by combining output pair
      IO_CUSTOM[i] = ((out_pair[1] << 16) & 0xFFFF0000) | 
                     (out_pair[0] & 0x0000FFFF);
    }

    // initiate data transfer from ioport to testbench
    IO_CUSTOM[OUT_TRIGGER] = 1;
    while (IO_CUSTOM[OUT_BUSY]) 
      ;
    
    // print sign of life
    // alt_printf only supports %x, %s, %c, and %%
    alt_printf("Block nr. = %x\n", ++block_count);
  }
}

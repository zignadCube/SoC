# 1 "sec_filter.c"
# 1 "/home/s3310914/Documents/nio/my_software//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "sec_filter.c"
# 15 "sec_filter.c"
# 1 "/home/socadmin/CPU/nios-system-2022/nios_siso/simulation/mentor/libraries/../../../software/nios_siso_bsp//HAL/inc/sys/alt_stdio.h" 1
# 46 "/home/socadmin/CPU/nios-system-2022/nios_siso/simulation/mentor/libraries/../../../software/nios_siso_bsp//HAL/inc/sys/alt_stdio.h"
# 1 "/remote/labware/packages/intel/quartus/18.1/nios2eds/bin/gnu/H-x86_64-pc-linux-gnu/lib/gcc/nios2-elf/5.3.0/include/stdarg.h" 1 3 4
# 40 "/remote/labware/packages/intel/quartus/18.1/nios2eds/bin/gnu/H-x86_64-pc-linux-gnu/lib/gcc/nios2-elf/5.3.0/include/stdarg.h" 3 4

# 40 "/remote/labware/packages/intel/quartus/18.1/nios2eds/bin/gnu/H-x86_64-pc-linux-gnu/lib/gcc/nios2-elf/5.3.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 98 "/remote/labware/packages/intel/quartus/18.1/nios2eds/bin/gnu/H-x86_64-pc-linux-gnu/lib/gcc/nios2-elf/5.3.0/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 47 "/home/socadmin/CPU/nios-system-2022/nios_siso/simulation/mentor/libraries/../../../software/nios_siso_bsp//HAL/inc/sys/alt_stdio.h" 2







# 53 "/home/socadmin/CPU/nios-system-2022/nios_siso/simulation/mentor/libraries/../../../software/nios_siso_bsp//HAL/inc/sys/alt_stdio.h"
int alt_getchar();
int alt_putchar(int c);
int alt_putstr(const char* str);
void alt_printf(const char *fmt, ...);
# 16 "sec_filter.c" 2
# 1 "/home/socadmin/CPU/nios-system-2022/nios_siso/simulation/mentor/libraries/../../../software/nios_siso_bsp/system.h" 1
# 55 "/home/socadmin/CPU/nios-system-2022/nios_siso/simulation/mentor/libraries/../../../software/nios_siso_bsp/system.h"
# 1 "/home/socadmin/CPU/nios-system-2022/nios_siso/simulation/mentor/libraries/../../../software/nios_siso_bsp/linker.h" 1
# 56 "/home/socadmin/CPU/nios-system-2022/nios_siso/simulation/mentor/libraries/../../../software/nios_siso_bsp/system.h" 2
# 17 "sec_filter.c" 2



volatile unsigned int *IO_CUSTOM=(unsigned int *)0x21000;
# 31 "sec_filter.c"
static inline int coeff_load(int a, int b, int c, int d,int e,int f,int g,int h)
{

 IO_CUSTOM[13] = 1;

 IO_CUSTOM[0] = a;
 IO_CUSTOM[1] = b;
 IO_CUSTOM[2] = c;
 IO_CUSTOM[3] = d;
 IO_CUSTOM[4] = e;
 IO_CUSTOM[5] = f;
 IO_CUSTOM[6] = g;
 IO_CUSTOM[7] = h;


 IO_CUSTOM[13] = 0;

 return 0;
}

static inline void mult3(int left1, int right1, int left2, int right2, int left3, int right3, int * res1, int * res2, int * res3)
{
   IO_CUSTOM[13] = 2;

 IO_CUSTOM[0] = left1;
 IO_CUSTOM[1] = right1;
 IO_CUSTOM[2] = left2;
 IO_CUSTOM[3] = right2;
 IO_CUSTOM[4] = left3;
 IO_CUSTOM[5] = right3;


 IO_CUSTOM[13] = 4;

 int temp1 = IO_CUSTOM[0];
 int temp2 = IO_CUSTOM[1];
 int temp3 = IO_CUSTOM[2];

 IO_CUSTOM[13] = 0;

 *res1 = (temp1 >> 8);
 *res2 = (temp2 >> 8);
 *res3 = (temp3 >> 8);
}

static inline void filter_mul_inputs_bx(int x, int * res1, int * res2, int * res3)
{
   IO_CUSTOM[13] = 2;
   IO_CUSTOM[14] = 1;

 IO_CUSTOM[0] = x;


 IO_CUSTOM[13] = 4;

 int temp1 = IO_CUSTOM[0];
 int temp2 = IO_CUSTOM[1];
 int temp3 = IO_CUSTOM[2];

 IO_CUSTOM[13] = 0;

 *res1 = (temp1 >> 8);
 *res2 = (temp2 >> 8);
 *res3 = (temp3 >> 8);
 IO_CUSTOM[14] = 0;
}

static inline void filter_mul_inputs_ay(int y, int * res1, int * res2)
{
   IO_CUSTOM[13] = 2;
   IO_CUSTOM[14] = 1;

 IO_CUSTOM[1] = y;


 IO_CUSTOM[13] = 4;

 int temp1 = IO_CUSTOM[3];
 int temp2 = IO_CUSTOM[4];

 IO_CUSTOM[13] = 0;

 *res1 = (temp1 >> 8);
 *res2 = (temp2 >> 8);
 IO_CUSTOM[14] = 0;
}



int main()
{

  alt_putstr("--> Start of sec_soft <--\n");


  int z1 = 0;
  int z2 = 0;


  const int b0 = 140;
  const int b1 = -280;
  const int b2 = 140;
  const int a1 = 225;
  const int a2 = -80;
  coeff_load(b0,b1,b2,a1,a2,0,0,0);


  int m1, m2, m3, m4, m5;
  int z1_next, z2_temp, z2_next, y;



  int block_count = 0;
  while (1) {


    IO_CUSTOM[8] = 1;

    while (IO_CUSTOM[10])
      ;


    int i,j;

    for (i=0; i <= 7; i++) {

      int current_pair = IO_CUSTOM[i];


      int in_pair[2], out_pair[2];


      if (current_pair & 0x00008000)
         in_pair[0] = current_pair | 0xFFFF0000;
      else
         in_pair[0] = current_pair & 0x0000FFFF;
      in_pair[1] = current_pair >> 16;



      for (j=0; j <= 1; j++) {

        filter_mul_inputs_bx(in_pair[j], &m1, &m2, &m4);

        y = z2 + m1;

        filter_mul_inputs_ay(y, &m3, &m5);

        z1_next = m4 + m5;
        z2_temp = z1 + m2;
        z2_next = z2_temp + m3;

        z1 = z1_next;
        z2 = z2_next;

        out_pair[j] = y;
      }

      IO_CUSTOM[i] = ((out_pair[1] << 16) & 0xFFFF0000) |
                     (out_pair[0] & 0x0000FFFF);
    }


    IO_CUSTOM[9] = 1;
    while (IO_CUSTOM[11])
      ;



    alt_printf("Block nr. = %x\n", ++block_count);
  }
}

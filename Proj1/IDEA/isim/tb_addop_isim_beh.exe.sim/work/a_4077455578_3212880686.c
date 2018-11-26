/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ck/Documents/Master_TUM/WS_1819/VHDL/Proj1/IDEA/addop.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488768496604610246_503743352(char *, unsigned char , unsigned char );
char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_4077455578_3212880686_p_0(char *t0)
{
    char t8[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    int t22;
    int t23;
    unsigned int t24;
    int t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;

LAB0:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3264);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1352U);
    t9 = *((char **)t4);
    t4 = (t0 + 5208U);
    t10 = (t0 + 1512U);
    t11 = *((char **)t10);
    t10 = (t0 + 5224U);
    t12 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t8, t9, t4, t11, t10);
    t13 = (t8 + 12U);
    t14 = *((unsigned int *)t13);
    t15 = (1U * t14);
    t16 = (16U != t15);
    if (t16 == 1)
        goto LAB8;

LAB9:    t17 = (t0 + 3344);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 16U);
    xsi_driver_first_trans_delta(t17, 1U, 16U, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t22 = (16 - 1);
    t23 = (t22 - 15);
    t14 = (t23 * -1);
    t15 = (1U * t14);
    t24 = (0 + t15);
    t2 = (t4 + t24);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 1512U);
    t9 = *((char **)t5);
    t25 = (16 - 1);
    t26 = (t25 - 15);
    t27 = (t26 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t5 = (t9 + t29);
    t3 = *((unsigned char *)t5);
    t6 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t1, t3);
    t10 = (t0 + 3344);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t17 = *((char **)t13);
    *((unsigned char *)t17) = t6;
    xsi_driver_first_trans_delta(t10, 0U, 1, 0LL);
    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_size_not_matching(16U, t15, 0);
    goto LAB9;

}


extern void work_a_4077455578_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4077455578_3212880686_p_0};
	xsi_register_didat("work_a_4077455578_3212880686", "isim/tb_addop_isim_beh.exe.sim/work/a_4077455578_3212880686.didat");
	xsi_register_executes(pe);
}

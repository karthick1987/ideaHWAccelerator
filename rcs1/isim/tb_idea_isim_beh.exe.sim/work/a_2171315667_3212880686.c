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
static const char *ng0 = "/home/ck/Documents/Master_TUM/WS_1819/VHDL/rcs1/mulop.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_3620187407_sub_1306455576397931277_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533613331_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533721142_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );


static void work_a_2171315667_3212880686_p_0(char *t0)
{
    char t11[16];
    char t22[16];
    char t27[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    unsigned int t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6680U);
    t3 = xsi_get_transient_memory(16U);
    memset(t3, 0, 16U);
    t4 = t3;
    if (-1 == -1)
        goto LAB5;

LAB6:    t5 = 0;

LAB7:    t6 = (t5 - 15);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (t4 + t8);
    t10 = (1U * 16U);
    memset(t9, (unsigned char)2, t10);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 15;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (15 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t11);
    if (t16 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 4104);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t9 = *((char **)t4);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4104);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t9 = (t4 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t2, 16U);
    xsi_driver_first_trans_delta(t1, 1U, 16U, 0LL);

LAB3:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6696U);
    t3 = xsi_get_transient_memory(16U);
    memset(t3, 0, 16U);
    t4 = t3;
    if (-1 == -1)
        goto LAB11;

LAB12:    t5 = 0;

LAB13:    t6 = (t5 - 15);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (t4 + t8);
    t10 = (1U * 16U);
    memset(t9, (unsigned char)2, t10);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 15;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (15 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t11);
    if (t16 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 4168);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t9 = *((char **)t4);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4168);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t9 = (t4 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t2, 16U);
    xsi_driver_first_trans_delta(t1, 1U, 16U, 0LL);

LAB9:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6728U);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t3 = (t0 + 6744U);
    t9 = ieee_p_3620187407_sub_1496620905533613331_3965413181(IEEE_P_3620187407, t11, t2, t1, t4, t3);
    t12 = (t11 + 12U);
    t5 = *((unsigned int *)t12);
    t7 = (1U * t5);
    t16 = (34U != t7);
    if (t16 == 1)
        goto LAB14;

LAB15:    t13 = (t0 + 4232);
    t17 = (t13 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 34U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t6 = (2 * 16);
    t5 = (33 - t6);
    t7 = (t5 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = (t0 + 4296);
    t4 = (t3 + 56U);
    t9 = *((char **)t4);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 17U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t6 = (16 - 1);
    t5 = (33 - t6);
    t7 = (t5 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t4 = ((IEEE_P_2592010699) + 4000);
    t9 = (t22 + 0U);
    t12 = (t9 + 0U);
    *((int *)t12) = 15;
    t12 = (t9 + 4U);
    *((int *)t12) = 0;
    t12 = (t9 + 8U);
    *((int *)t12) = -1;
    t14 = (0 - 15);
    t10 = (t14 * -1);
    t10 = (t10 + 1);
    t12 = (t9 + 12U);
    *((unsigned int *)t12) = t10;
    t3 = xsi_base_array_concat(t3, t11, t4, (char)99, (unsigned char)2, (char)97, t1, t22, (char)101);
    t10 = (1U + 16U);
    t16 = (17U != t10);
    if (t16 == 1)
        goto LAB16;

LAB17:    t12 = (t0 + 4360);
    t13 = (t12 + 56U);
    t17 = *((char **)t13);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t3, 17U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 6792U);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t3 = (t0 + 6776U);
    t16 = ieee_p_3620187407_sub_1306455576397931277_3965413181(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t16 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2728U);
    t2 = *((char **)t1);
    t1 = (t0 + 6824U);
    t3 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t27, t2, t1, 1);
    t4 = (t0 + 2152U);
    t9 = *((char **)t4);
    t4 = (t0 + 6792U);
    t12 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t22, t3, t27, t9, t4);
    t13 = (t0 + 1992U);
    t17 = *((char **)t13);
    t13 = (t0 + 6776U);
    t18 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t11, t12, t22, t17, t13);
    t19 = (t11 + 12U);
    t5 = *((unsigned int *)t19);
    t7 = (1U * t5);
    t16 = (17U != t7);
    if (t16 == 1)
        goto LAB23;

LAB24:    t20 = (t0 + 4424);
    t21 = (t20 + 56U);
    t24 = *((char **)t21);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t18, 17U);
    xsi_driver_first_trans_fast(t20);

LAB19:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t6 = (16 - 1);
    t5 = (16 - t6);
    t7 = (t5 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = (t0 + 4488);
    t4 = (t3 + 56U);
    t9 = *((char **)t4);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 16U);
    xsi_driver_first_trans_fast_port(t3);
    t1 = (t0 + 4024);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(60, ng0);
    t13 = (t0 + 2728U);
    t17 = *((char **)t13);
    t13 = (t0 + 4104);
    t18 = (t13 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t17, 17U);
    xsi_driver_first_trans_fast(t13);
    goto LAB3;

LAB5:    t5 = 15;
    goto LAB7;

LAB8:    xsi_set_current_line(67, ng0);
    t13 = (t0 + 2728U);
    t17 = *((char **)t13);
    t13 = (t0 + 4168);
    t18 = (t13 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t17, 17U);
    xsi_driver_first_trans_fast(t13);
    goto LAB9;

LAB11:    t5 = 15;
    goto LAB13;

LAB14:    xsi_size_not_matching(34U, t7, 0);
    goto LAB15;

LAB16:    xsi_size_not_matching(17U, t10, 0);
    goto LAB17;

LAB18:    xsi_set_current_line(78, ng0);
    t9 = (t0 + 2152U);
    t12 = *((char **)t9);
    t9 = (t0 + 6792U);
    t13 = (t0 + 1992U);
    t17 = *((char **)t13);
    t13 = (t0 + 6776U);
    t18 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t11, t12, t9, t17, t13);
    t19 = (t11 + 12U);
    t5 = *((unsigned int *)t19);
    t7 = (1U * t5);
    t23 = (17U != t7);
    if (t23 == 1)
        goto LAB21;

LAB22:    t20 = (t0 + 4424);
    t21 = (t20 + 56U);
    t24 = *((char **)t21);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t18, 17U);
    xsi_driver_first_trans_fast(t20);
    goto LAB19;

LAB21:    xsi_size_not_matching(17U, t7, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(17U, t7, 0);
    goto LAB24;

}


extern void work_a_2171315667_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2171315667_3212880686_p_0};
	xsi_register_didat("work_a_2171315667_3212880686", "isim/tb_idea_isim_beh.exe.sim/work/a_2171315667_3212880686.didat");
	xsi_register_executes(pe);
}

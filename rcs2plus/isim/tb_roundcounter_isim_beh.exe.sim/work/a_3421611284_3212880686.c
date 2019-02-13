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
static const char *ng0 = "/home/ck/Documents/Master_TUM/WS_1819/VHDL/rcs2plus/roundcounter.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_1366267000076357978_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );


static void work_a_3421611284_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5080);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4936);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3421611284_3212880686_p_1(char *t0)
{
    char t18[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t19;
    unsigned int t20;
    static char *nl0[] = {&&LAB9, &&LAB10, &&LAB11};

LAB0:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4952);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 2312U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t4 = (char *)((nl0) + t9);
    goto **((char **)t4);

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    goto LAB3;

LAB9:    xsi_set_current_line(59, ng0);
    t10 = (t0 + 1192U);
    t11 = *((char **)t10);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)3);
    if (t13 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 5144);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);

LAB13:    goto LAB8;

LAB10:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 5144);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB11:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)2);
    if (t3 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t2 = (t0 + 8320U);
    t5 = (t0 + 8353);
    t10 = (t18 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 3;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t19 = (3 - 0);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t20;
    t1 = ieee_p_3620187407_sub_1366267000076357978_3965413181(IEEE_P_3620187407, t4, t2, t5, t18);
    if (t1 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 5144);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);

LAB19:
LAB16:    goto LAB8;

LAB12:    xsi_set_current_line(60, ng0);
    t10 = (t0 + 5144);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)1;
    xsi_driver_first_trans_fast(t10);
    goto LAB13;

LAB15:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 5144);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB16;

LAB18:    xsi_set_current_line(73, ng0);
    t11 = (t0 + 5144);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)1;
    xsi_driver_first_trans_fast(t11);
    goto LAB19;

}

static void work_a_3421611284_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(82, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = (3 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 5208);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4968);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3421611284_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5};

LAB0:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 4984);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(88, ng0);
    t4 = (t0 + 5272);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 5336);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB4:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 5272);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 5336);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 5272);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 5336);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

}

static void work_a_3421611284_3212880686_p_4(char *t0)
{
    char t45[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    char *t36;
    unsigned char t37;
    unsigned char t38;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned int t46;
    unsigned int t47;

LAB0:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5000);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(104, ng0);
    t4 = (t0 + 2472U);
    t8 = *((char **)t4);
    t4 = (t0 + 8357);
    t10 = xsi_mem_cmp(t4, t8, 4U);
    if (t10 == 1)
        goto LAB9;

LAB19:    t11 = (t0 + 8361);
    t13 = xsi_mem_cmp(t11, t8, 4U);
    if (t13 == 1)
        goto LAB10;

LAB20:    t14 = (t0 + 8365);
    t16 = xsi_mem_cmp(t14, t8, 4U);
    if (t16 == 1)
        goto LAB11;

LAB21:    t17 = (t0 + 8369);
    t19 = xsi_mem_cmp(t17, t8, 4U);
    if (t19 == 1)
        goto LAB12;

LAB22:    t20 = (t0 + 8373);
    t22 = xsi_mem_cmp(t20, t8, 4U);
    if (t22 == 1)
        goto LAB13;

LAB23:    t23 = (t0 + 8377);
    t25 = xsi_mem_cmp(t23, t8, 4U);
    if (t25 == 1)
        goto LAB14;

LAB24:    t26 = (t0 + 8381);
    t28 = xsi_mem_cmp(t26, t8, 4U);
    if (t28 == 1)
        goto LAB15;

LAB25:    t29 = (t0 + 8385);
    t31 = xsi_mem_cmp(t29, t8, 4U);
    if (t31 == 1)
        goto LAB16;

LAB26:    t32 = (t0 + 8389);
    t34 = xsi_mem_cmp(t32, t8, 4U);
    if (t34 == 1)
        goto LAB17;

LAB27:
LAB18:    xsi_set_current_line(151, ng0);
    t2 = (t0 + 5464);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(152, ng0);
    t2 = (t0 + 8397);
    t5 = (t0 + 5400);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast(t5);

LAB8:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB9:    xsi_set_current_line(106, ng0);
    t35 = (t0 + 1192U);
    t36 = *((char **)t35);
    t37 = *((unsigned char *)t36);
    t38 = (t37 == (unsigned char)3);
    if (t38 != 0)
        goto LAB29;

LAB31:
LAB30:    goto LAB8;

LAB10:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB32;

LAB34:
LAB33:    goto LAB8;

LAB11:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 5464);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB37;

LAB39:
LAB38:    goto LAB8;

LAB12:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 5464);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB42;

LAB44:
LAB43:    goto LAB8;

LAB13:    xsi_set_current_line(126, ng0);
    t2 = (t0 + 5464);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB47;

LAB49:
LAB48:    goto LAB8;

LAB14:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 5464);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(132, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB52;

LAB54:
LAB53:    goto LAB8;

LAB15:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 5464);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(137, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB57;

LAB59:
LAB58:    goto LAB8;

LAB16:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 5464);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(142, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB62;

LAB64:
LAB63:    goto LAB8;

LAB17:    xsi_set_current_line(146, ng0);
    t2 = (t0 + 5464);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(147, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB67;

LAB69:
LAB68:    goto LAB8;

LAB28:;
LAB29:    xsi_set_current_line(107, ng0);
    t35 = (t0 + 8393);
    t40 = (t0 + 5400);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    memcpy(t44, t35, 4U);
    xsi_driver_first_trans_fast(t40);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 5464);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB30;

LAB32:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t2 = (t0 + 8320U);
    t8 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t45, t5, t2, 1);
    t9 = (t45 + 12U);
    t46 = *((unsigned int *)t9);
    t47 = (1U * t46);
    t6 = (4U != t47);
    if (t6 == 1)
        goto LAB35;

LAB36:    t11 = (t0 + 5400);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 5464);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB33;

LAB35:    xsi_size_not_matching(4U, t47, 0);
    goto LAB36;

LAB37:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t2 = (t0 + 8320U);
    t8 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t45, t5, t2, 1);
    t9 = (t45 + 12U);
    t46 = *((unsigned int *)t9);
    t47 = (1U * t46);
    t6 = (4U != t47);
    if (t6 == 1)
        goto LAB40;

LAB41:    t11 = (t0 + 5400);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast(t11);
    goto LAB38;

LAB40:    xsi_size_not_matching(4U, t47, 0);
    goto LAB41;

LAB42:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t2 = (t0 + 8320U);
    t8 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t45, t5, t2, 1);
    t9 = (t45 + 12U);
    t46 = *((unsigned int *)t9);
    t47 = (1U * t46);
    t6 = (4U != t47);
    if (t6 == 1)
        goto LAB45;

LAB46:    t11 = (t0 + 5400);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast(t11);
    goto LAB43;

LAB45:    xsi_size_not_matching(4U, t47, 0);
    goto LAB46;

LAB47:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t2 = (t0 + 8320U);
    t8 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t45, t5, t2, 1);
    t9 = (t45 + 12U);
    t46 = *((unsigned int *)t9);
    t47 = (1U * t46);
    t6 = (4U != t47);
    if (t6 == 1)
        goto LAB50;

LAB51:    t11 = (t0 + 5400);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast(t11);
    goto LAB48;

LAB50:    xsi_size_not_matching(4U, t47, 0);
    goto LAB51;

LAB52:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t2 = (t0 + 8320U);
    t8 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t45, t5, t2, 1);
    t9 = (t45 + 12U);
    t46 = *((unsigned int *)t9);
    t47 = (1U * t46);
    t6 = (4U != t47);
    if (t6 == 1)
        goto LAB55;

LAB56:    t11 = (t0 + 5400);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast(t11);
    goto LAB53;

LAB55:    xsi_size_not_matching(4U, t47, 0);
    goto LAB56;

LAB57:    xsi_set_current_line(138, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t2 = (t0 + 8320U);
    t8 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t45, t5, t2, 1);
    t9 = (t45 + 12U);
    t46 = *((unsigned int *)t9);
    t47 = (1U * t46);
    t6 = (4U != t47);
    if (t6 == 1)
        goto LAB60;

LAB61:    t11 = (t0 + 5400);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast(t11);
    goto LAB58;

LAB60:    xsi_size_not_matching(4U, t47, 0);
    goto LAB61;

LAB62:    xsi_set_current_line(143, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t2 = (t0 + 8320U);
    t8 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t45, t5, t2, 1);
    t9 = (t45 + 12U);
    t46 = *((unsigned int *)t9);
    t47 = (1U * t46);
    t6 = (4U != t47);
    if (t6 == 1)
        goto LAB65;

LAB66:    t11 = (t0 + 5400);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast(t11);
    goto LAB63;

LAB65:    xsi_size_not_matching(4U, t47, 0);
    goto LAB66;

LAB67:    xsi_set_current_line(148, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t2 = (t0 + 8320U);
    t8 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t45, t5, t2, 1);
    t9 = (t45 + 12U);
    t46 = *((unsigned int *)t9);
    t47 = (1U * t46);
    t6 = (4U != t47);
    if (t6 == 1)
        goto LAB70;

LAB71:    t11 = (t0 + 5400);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast(t11);
    goto LAB68;

LAB70:    xsi_size_not_matching(4U, t47, 0);
    goto LAB71;

}


extern void work_a_3421611284_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3421611284_3212880686_p_0,(void *)work_a_3421611284_3212880686_p_1,(void *)work_a_3421611284_3212880686_p_2,(void *)work_a_3421611284_3212880686_p_3,(void *)work_a_3421611284_3212880686_p_4};
	xsi_register_didat("work_a_3421611284_3212880686", "isim/tb_roundcounter_isim_beh.exe.sim/work/a_3421611284_3212880686.didat");
	xsi_register_executes(pe);
}

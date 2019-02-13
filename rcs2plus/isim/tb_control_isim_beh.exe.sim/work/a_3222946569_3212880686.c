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
static const char *ng0 = "/home/ck/Documents/Master_TUM/WS_1819/VHDL/rcs2plus/control.vhd";



static void work_a_3222946569_3212880686_p_0(char *t0)
{
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
    int t16;
    char *t17;
    int t19;
    char *t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3944);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 2472U);
    t8 = *((char **)t4);
    t4 = (t0 + 6805);
    t10 = xsi_mem_cmp(t4, t8, 2U);
    if (t10 == 1)
        goto LAB9;

LAB14:    t11 = (t0 + 6807);
    t13 = xsi_mem_cmp(t11, t8, 2U);
    if (t13 == 1)
        goto LAB10;

LAB15:    t14 = (t0 + 6809);
    t16 = xsi_mem_cmp(t14, t8, 2U);
    if (t16 == 1)
        goto LAB11;

LAB16:    t17 = (t0 + 6811);
    t19 = xsi_mem_cmp(t17, t8, 2U);
    if (t19 == 1)
        goto LAB12;

LAB17:
LAB13:    xsi_set_current_line(123, ng0);

LAB8:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB9:    xsi_set_current_line(55, ng0);
    t20 = (t0 + 6813);
    t22 = (t0 + 4024);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t20, 2U);
    xsi_driver_first_trans_fast(t22);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 4088);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 4152);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 4216);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 4280);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 6815);
    t5 = (t0 + 4344);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)2);
    if (t3 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 6819);
    t5 = (t0 + 4408);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);

LAB20:    goto LAB8;

LAB10:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)2);
    if (t3 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 4088);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 4152);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 4216);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 4280);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 6827);
    t5 = (t0 + 4344);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 6829);
    t5 = (t0 + 4408);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 6831);
    t5 = (t0 + 4024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast(t5);

LAB23:    goto LAB8;

LAB11:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 6833);
    t5 = (t0 + 4024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 4088);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 4152);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 4216);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 4280);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 6835);
    t5 = (t0 + 4344);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)2);
    if (t3 != 0)
        goto LAB25;

LAB27:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 6839);
    t5 = (t0 + 4408);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);

LAB26:    goto LAB8;

LAB12:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB28;

LAB30:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 6849);
    t5 = (t0 + 4024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 4088);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 4152);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 4216);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 4280);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 6851);
    t5 = (t0 + 4344);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)2);
    if (t3 != 0)
        goto LAB34;

LAB36:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 6855);
    t5 = (t0 + 4408);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);

LAB35:
LAB29:    goto LAB8;

LAB18:;
LAB19:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 6817);
    t8 = (t0 + 4408);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 2U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB20;

LAB22:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 4088);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 4152);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4216);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 4280);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 6821);
    t5 = (t0 + 4344);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 6823);
    t5 = (t0 + 4408);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 6825);
    t5 = (t0 + 4024);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB23;

LAB25:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 6837);
    t8 = (t0 + 4408);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 2U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB26;

LAB28:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 6841);
    t8 = (t0 + 4024);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 2U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4088);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 4152);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 4216);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 4280);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 6843);
    t5 = (t0 + 4344);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)2);
    if (t3 != 0)
        goto LAB31;

LAB33:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 6847);
    t5 = (t0 + 4408);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);

LAB32:    goto LAB29;

LAB31:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 6845);
    t8 = (t0 + 4408);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 2U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB32;

LAB34:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 6853);
    t8 = (t0 + 4408);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t2, 2U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB35;

}


extern void work_a_3222946569_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3222946569_3212880686_p_0};
	xsi_register_didat("work_a_3222946569_3212880686", "isim/tb_control_isim_beh.exe.sim/work/a_3222946569_3212880686.didat");
	xsi_register_executes(pe);
}

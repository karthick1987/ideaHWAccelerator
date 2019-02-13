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
static const char *ng0 = "/home/ck/Documents/Master_TUM/WS_1819/VHDL/rcs2plus/tb_roundcounter.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_0479353258_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int64 t10;
    int64 t11;
    int t12;
    int t13;

LAB0:    t1 = (t0 + 3584U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 3968);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2608U);
    t3 = *((char **)t2);
    t10 = *((int64 *)t3);
    t11 = (t10 / 2);
    t2 = (t0 + 3392);
    xsi_process_wait(t2, t11);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t12 = *((int *)t3);
    t13 = (t12 + 1);
    t2 = (t0 + 4032);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t13;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t12 = *((int *)t3);
    t4 = (t12 == 1);
    if (t4 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t12 = *((int *)t3);
    t4 = (t12 == 3);
    if (t4 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t12 = *((int *)t3);
    t4 = (t12 == 14);
    if (t4 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t12 = *((int *)t3);
    t4 = (t12 == 18);
    if (t4 != 0)
        goto LAB17;

LAB19:
LAB18:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t12 = *((int *)t3);
    t4 = (t12 == 25);
    if (t4 != 0)
        goto LAB20;

LAB22:
LAB21:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t12 = *((int *)t3);
    t4 = (t12 == 27);
    if (t4 != 0)
        goto LAB23;

LAB25:
LAB24:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t12 = *((int *)t3);
    t4 = (t12 == 50);
    if (t4 != 0)
        goto LAB26;

LAB28:
LAB27:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 4096);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

LAB11:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 4096);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB12;

LAB14:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 4160);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB15;

LAB17:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 4160);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB18;

LAB20:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 4096);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB21;

LAB23:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 4096);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB24;

LAB26:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4096);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB27;

}


extern void work_a_0479353258_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0479353258_3212880686_p_0};
	xsi_register_didat("work_a_0479353258_3212880686", "isim/tb_roundcounter_isim_beh.exe.sim/work/a_0479353258_3212880686.didat");
	xsi_register_executes(pe);
}

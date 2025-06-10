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
static const char *ng0 = "/home/vincent/Documents/GitHub/UCISW-Projekt/Projekt Quiz/QUIZ3.06/rng_test.vhd";



static void work_a_2962258952_1985558087_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int t8;
    int t9;
    char *t10;
    char *t11;
    int t12;

LAB0:    t1 = (t0 + 2504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(31, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(33, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 4898);
    *((int *)t2) = 1;
    t3 = (t0 + 4902);
    *((int *)t3) = 18;
    t8 = 1;
    t9 = 18;

LAB12:    if (t8 <= t9)
        goto LAB13;

LAB15:    xsi_set_current_line(42, ng0);

LAB27:    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 2952);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(37, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t7);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB14:    t2 = (t0 + 4898);
    t8 = *((int *)t2);
    t3 = (t0 + 4902);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB15;

LAB24:    t12 = (t8 + 1);
    t8 = t12;
    t4 = (t0 + 4898);
    *((int *)t4) = t8;
    goto LAB12;

LAB16:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2952);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(39, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2312);
    xsi_process_wait(t2, t7);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    goto LAB14;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB25:    goto LAB2;

LAB26:    goto LAB25;

LAB28:    goto LAB26;

}


extern void work_a_2962258952_1985558087_init()
{
	static char *pe[] = {(void *)work_a_2962258952_1985558087_p_0};
	xsi_register_didat("work_a_2962258952_1985558087", "isim/rng_test_isim_beh.exe.sim/work/a_2962258952_1985558087.didat");
	xsi_register_executes(pe);
}

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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/lab/Desktop/QUIZ10.06v2/QUIZ10.06/QUIZ3.06/OUTPUT_tb.vhd";



static void work_a_2192315228_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3392U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 4024);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 4024);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2192315228_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int64 t10;
    unsigned char t11;
    unsigned char t12;
    unsigned int t13;
    int t14;
    int t15;
    int t16;

LAB0:    t1 = (t0 + 3640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t3 = (20 * 1000LL);
    t2 = (t0 + 3448);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 9336);
    t5 = (t0 + 4088);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t10 = (t3 * 2);
    t2 = (t0 + 3448);
    xsi_process_wait(t2, t10);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)2);
    if (t12 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 9374);
    t5 = (t0 + 4088);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2408U);
    t4 = *((char **)t2);
    t2 = (t0 + 4152);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 816U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t10 = (t3 * 2);
    t2 = (t0 + 3448);
    xsi_process_wait(t2, t10);

LAB16:    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t2 = (t0 + 9340);
    xsi_report(t2, 34U, (unsigned char)2);
    goto LAB13;

LAB14:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 0)
        goto LAB18;

LAB19:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 2408U);
    t5 = *((char **)t2);
    t11 = 1;
    if (816U == 816U)
        goto LAB22;

LAB23:    t11 = 0;

LAB24:    if (t11 == 0)
        goto LAB20;

LAB21:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 9454);
    t5 = (t0 + 4088);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t10 = (t3 * 2);
    t2 = (t0 + 3448);
    xsi_process_wait(t2, t10);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB15:    goto LAB14;

LAB17:    goto LAB15;

LAB18:    t2 = (t0 + 9378);
    xsi_report(t2, 35U, (unsigned char)2);
    goto LAB19;

LAB20:    t7 = (t0 + 9413);
    xsi_report(t7, 41U, (unsigned char)2);
    goto LAB21;

LAB22:    t13 = 0;

LAB25:    if (t13 < 816U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t2 = (t4 + t13);
    t6 = (t5 + t13);
    if (*((unsigned char *)t2) != *((unsigned char *)t6))
        goto LAB23;

LAB27:    t13 = (t13 + 1);
    goto LAB25;

LAB28:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 0)
        goto LAB32;

LAB33:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 9491);
    t5 = (t0 + 4088);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 4216);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t10 = (t3 * 2);
    t2 = (t0 + 3448);
    xsi_process_wait(t2, t10);

LAB36:    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    t2 = (t0 + 9458);
    xsi_report(t2, 33U, (unsigned char)2);
    goto LAB33;

LAB34:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 0)
        goto LAB38;

LAB39:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 9528);
    t5 = (t0 + 4088);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 4216);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t10 = (t3 * 2);
    t2 = (t0 + 3448);
    xsi_process_wait(t2, t10);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB35:    goto LAB34;

LAB37:    goto LAB35;

LAB38:    t2 = (t0 + 9495);
    xsi_report(t2, 33U, (unsigned char)2);
    goto LAB39;

LAB40:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 0)
        goto LAB44;

LAB45:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 9565);
    t5 = (t0 + 4088);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 2408U);
    t4 = *((char **)t2);
    t2 = (t0 + 4152);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 816U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 9569);
    *((int *)t2) = 0;
    t4 = (t0 + 9573);
    *((int *)t4) = 15;
    t14 = 0;
    t15 = 15;

LAB46:    if (t14 <= t15)
        goto LAB47;

LAB49:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 9577);
    t5 = (t0 + 4088);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t10 = (t3 * 2);
    t2 = (t0 + 3448);
    xsi_process_wait(t2, t10);

LAB57:    *((char **)t1) = &&LAB58;
    goto LAB1;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    t2 = (t0 + 9532);
    xsi_report(t2, 33U, (unsigned char)2);
    goto LAB45;

LAB47:    xsi_set_current_line(102, ng0);
    t5 = (t0 + 2288U);
    t6 = *((char **)t5);
    t3 = *((int64 *)t6);
    t5 = (t0 + 3448);
    xsi_process_wait(t5, t3);

LAB52:    *((char **)t1) = &&LAB53;
    goto LAB1;

LAB48:    t2 = (t0 + 9569);
    t14 = *((int *)t2);
    t4 = (t0 + 9573);
    t15 = *((int *)t4);
    if (t14 == t15)
        goto LAB49;

LAB54:    t16 = (t14 + 1);
    t14 = t16;
    t5 = (t0 + 9569);
    *((int *)t5) = t14;
    goto LAB46;

LAB50:    goto LAB48;

LAB51:    goto LAB50;

LAB53:    goto LAB51;

LAB55:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)2);
    if (t12 == 0)
        goto LAB59;

LAB60:    xsi_set_current_line(110, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3448);
    xsi_process_wait(t2, t3);

LAB63:    *((char **)t1) = &&LAB64;
    goto LAB1;

LAB56:    goto LAB55;

LAB58:    goto LAB56;

LAB59:    t2 = (t0 + 9581);
    xsi_report(t2, 34U, (unsigned char)2);
    goto LAB60;

LAB61:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 9615);
    xsi_report(t2, 39U, 0);
    xsi_set_current_line(113, ng0);

LAB67:    *((char **)t1) = &&LAB68;
    goto LAB1;

LAB62:    goto LAB61;

LAB64:    goto LAB62;

LAB65:    goto LAB2;

LAB66:    goto LAB65;

LAB68:    goto LAB66;

}


extern void work_a_2192315228_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2192315228_3212880686_p_0,(void *)work_a_2192315228_3212880686_p_1};
	xsi_register_didat("work_a_2192315228_3212880686", "isim/OUTPUT_tb_isim_beh.exe.sim/work/a_2192315228_3212880686.didat");
	xsi_register_executes(pe);
}

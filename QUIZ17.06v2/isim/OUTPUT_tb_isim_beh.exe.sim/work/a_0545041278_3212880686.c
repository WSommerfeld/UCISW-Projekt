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
static const char *ng0 = "C:/Users/lab/Desktop/QUIZ10.06v2/QUIZ10.06/QUIZ3.06/OUTPUT.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0545041278_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    int t13;
    int t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 == 14);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1152U);
    t11 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t11 == 1)
        goto LAB8;

LAB9:    t4 = (unsigned char)0;

LAB10:    if (t4 != 0)
        goto LAB5;

LAB7:
LAB6:    t1 = (t0 + 4040);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t1 = xsi_get_transient_memory(816U);
    memset(t1, 0, 816U);
    t5 = t1;
    memset(t5, (unsigned char)2, 816U);
    t6 = (t0 + 4136);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 816U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 8336);
    t5 = (t0 + 4136);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 816U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1032U);
    t6 = *((char **)t2);
    t2 = (t0 + 9152);
    t13 = xsi_mem_cmp(t2, t6, 4U);
    if (t13 == 1)
        goto LAB12;

LAB17:    t8 = (t0 + 9156);
    t14 = xsi_mem_cmp(t8, t6, 4U);
    if (t14 == 1)
        goto LAB13;

LAB18:    t10 = (t0 + 9160);
    t16 = xsi_mem_cmp(t10, t6, 4U);
    if (t16 == 1)
        goto LAB14;

LAB19:    t17 = (t0 + 9164);
    t19 = xsi_mem_cmp(t17, t6, 4U);
    if (t19 == 1)
        goto LAB15;

LAB20:
LAB16:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 4200);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB11:    goto LAB6;

LAB8:    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t3 = *((int *)t5);
    t12 = (t3 < 14);
    t4 = t12;
    goto LAB10;

LAB12:    xsi_set_current_line(64, ng0);
    t20 = (t0 + 4200);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t20);
    xsi_set_current_line(65, ng0);
    t1 = xsi_get_transient_memory(816U);
    memset(t1, 0, 816U);
    t2 = t1;
    memset(t2, (unsigned char)2, 816U);
    t5 = (t0 + 4136);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 816U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 9168);
    t5 = (t0 + 4136);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 816U);
    xsi_driver_first_trans_fast(t5);
    goto LAB11;

LAB13:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 4200);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 4136);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 816U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t13 = (t3 + 1);
    t1 = (t0 + 4264);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t13;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB14:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 4200);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(78, ng0);
    t1 = xsi_get_transient_memory(816U);
    memset(t1, 0, 816U);
    t2 = t1;
    memset(t2, (unsigned char)2, 816U);
    t5 = (t0 + 4136);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 816U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 9984);
    t5 = (t0 + 4136);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 816U);
    xsi_driver_first_trans_fast(t5);
    goto LAB11;

LAB15:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 4200);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)3);
    if (t11 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(93, ng0);
    t1 = xsi_get_transient_memory(816U);
    memset(t1, 0, 816U);
    t2 = t1;
    memset(t2, (unsigned char)2, 816U);
    t5 = (t0 + 4136);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 816U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 11616);
    t5 = (t0 + 4136);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 816U);
    xsi_driver_first_trans_fast(t5);

LAB23:    goto LAB11;

LAB21:;
LAB22:    xsi_set_current_line(88, ng0);
    t1 = xsi_get_transient_memory(816U);
    memset(t1, 0, 816U);
    t5 = t1;
    memset(t5, (unsigned char)2, 816U);
    t6 = (t0 + 4136);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 816U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 10800);
    t5 = (t0 + 4136);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 816U);
    xsi_driver_first_trans_fast(t5);
    goto LAB23;

}

static void work_a_0545041278_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(112, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4328);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 816U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4056);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0545041278_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0545041278_3212880686_p_0,(void *)work_a_0545041278_3212880686_p_1};
	xsi_register_didat("work_a_0545041278_3212880686", "isim/OUTPUT_tb_isim_beh.exe.sim/work/a_0545041278_3212880686.didat");
	xsi_register_executes(pe);
}

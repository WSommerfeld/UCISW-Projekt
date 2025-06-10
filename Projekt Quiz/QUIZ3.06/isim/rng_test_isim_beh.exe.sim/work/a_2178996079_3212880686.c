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
static const char *ng0 = "/home/vincent/Documents/GitHub/UCISW-Projekt/Projekt Quiz/QUIZ3.06/rng.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );
int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_3488768497506413324_503743352(char *, unsigned char , unsigned char );


static void work_a_2178996079_3212880686_p_0(char *t0)
{
    char t41[16];
    char t43[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned char t23;
    unsigned char t24;
    char *t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    unsigned char t31;
    char *t32;
    char *t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned char t38;
    unsigned char t39;
    char *t40;
    char *t42;
    char *t44;
    char *t45;
    int t46;
    unsigned int t47;
    char *t48;

LAB0:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3912);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 6872);
    t6 = (t0 + 4008);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(27, ng0);
    t1 = xsi_get_transient_memory(15U);
    memset(t1, 0, 15U);
    t2 = t1;
    memset(t2, (unsigned char)2, 15U);
    t5 = (t0 + 4072);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 15U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t2 = (t0 + 2248U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    memcpy(t2, t5, 8U);
    xsi_set_current_line(30, ng0);
    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(33, ng0);

LAB7:    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t3 = (t11 < 16);
    if (t3 != 0)
        goto LAB8;

LAB10:    goto LAB3;

LAB8:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 2248U);
    t5 = *((char **)t1);
    t12 = (7 - 6);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t5 + t14);
    t6 = (t0 + 2248U);
    t7 = *((char **)t6);
    t15 = (7 - 7);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t6 = (t7 + t18);
    t4 = *((unsigned char *)t6);
    t8 = (t0 + 2248U);
    t9 = *((char **)t8);
    t19 = (5 - 7);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t8 = (t9 + t22);
    t23 = *((unsigned char *)t8);
    t24 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t4, t23);
    t10 = (t0 + 2248U);
    t25 = *((char **)t10);
    t26 = (4 - 7);
    t27 = (t26 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t10 = (t25 + t29);
    t30 = *((unsigned char *)t10);
    t31 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t24, t30);
    t32 = (t0 + 2248U);
    t33 = *((char **)t32);
    t34 = (3 - 7);
    t35 = (t34 * -1);
    t36 = (1U * t35);
    t37 = (0 + t36);
    t32 = (t33 + t37);
    t38 = *((unsigned char *)t32);
    t39 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t31, t38);
    t42 = ((IEEE_P_2592010699) + 4000);
    t44 = (t43 + 0U);
    t45 = (t44 + 0U);
    *((int *)t45) = 6;
    t45 = (t44 + 4U);
    *((int *)t45) = 0;
    t45 = (t44 + 8U);
    *((int *)t45) = -1;
    t46 = (0 - 6);
    t47 = (t46 * -1);
    t47 = (t47 + 1);
    t45 = (t44 + 12U);
    *((unsigned int *)t45) = t47;
    t40 = xsi_base_array_concat(t40, t41, t42, (char)97, t1, t43, (char)99, t39, (char)101);
    t45 = (t0 + 2248U);
    t48 = *((char **)t45);
    t45 = (t48 + 0);
    t47 = (7U + 1U);
    memcpy(t45, t40, t47);
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t1 = (t0 + 6800U);
    t11 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t2, t1);
    t15 = xsi_vhdl_mod(t11, 15);
    t5 = (t0 + 2128U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    *((int *)t5) = t15;
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 2128U);
    t5 = *((char **)t1);
    t11 = *((int *)t5);
    t15 = (t11 - 14);
    t12 = (t15 * -1);
    xsi_vhdl_check_range_of_index(14, 0, -1, t11);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t15 = (t11 + 1);
    t1 = (t0 + 2368U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t15;
    goto LAB7;

LAB9:;
LAB11:    xsi_set_current_line(40, ng0);
    t6 = (t0 + 2248U);
    t7 = *((char **)t6);
    t6 = (t0 + 4008);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t25 = *((char **)t10);
    memcpy(t25, t7, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 2128U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t15 = (t11 - 14);
    t12 = (t15 * -1);
    t13 = (1 * t12);
    t14 = (0U + t13);
    t1 = (t0 + 4072);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, t14, 1, 0LL);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2128U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = (t0 + 4136);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t11;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(43, ng0);
    goto LAB10;

LAB14:    goto LAB12;

}

static void work_a_2178996079_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t2 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t1, t4, 8);
    t5 = (t0 + 4200);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);

LAB2:    t10 = (t0 + 3928);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2178996079_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2178996079_3212880686_p_0,(void *)work_a_2178996079_3212880686_p_1};
	xsi_register_didat("work_a_2178996079_3212880686", "isim/rng_test_isim_beh.exe.sim/work/a_2178996079_3212880686.didat");
	xsi_register_executes(pe);
}

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
static const char *ng0 = "/home/vincent/Documents/GitHub/UCISW-Projekt/Projekt Quiz/QUIZ3.06/QUIZ.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );
int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0171225817_3212880686_p_0(char *t0)
{
    char t14[16];
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
    int t12;
    int t13;
    int t15;
    unsigned int t16;
    unsigned int t17;
    int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    int t25;
    int t26;
    int t27;
    int t28;
    char *t29;
    int t30;
    int t31;
    int t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    unsigned int t38;
    char *t39;
    int t40;
    int t41;
    int t42;
    int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    int t53;
    int t54;
    int t55;
    int t56;
    char *t57;
    int t58;
    int t59;
    int t60;
    int t61;
    int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    int t66;
    int t67;
    int t68;
    int t69;
    char *t70;
    int t71;
    int t72;
    int t73;
    int t74;
    int t75;
    unsigned int t76;
    unsigned int t77;

LAB0:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1312U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5680);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(83, ng0);
    t1 = xsi_get_transient_memory(816U);
    memset(t1, 0, 816U);
    t5 = t1;
    memset(t5, (unsigned char)2, 816U);
    t6 = (t0 + 5792);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 816U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 5856);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 1;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t2 = (t0 + 10288U);
    t11 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t5, t2);
    t12 = xsi_vhdl_mod(t11, 15);
    t13 = (t12 + 1);
    t6 = (t0 + 3528U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    *((int *)t6) = t13;
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 3528U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = (t0 + 5856);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t11;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 12928);
    *((int *)t1) = 1;
    t2 = (t0 + 12932);
    *((int *)t2) = 100;
    t11 = 1;
    t12 = 100;

LAB7:    if (t11 <= t12)
        goto LAB8;

LAB10:    goto LAB3;

LAB8:    xsi_set_current_line(92, ng0);
    t5 = (t0 + 3408U);
    t6 = *((char **)t5);
    t5 = (t0 + 12928);
    t13 = *((int *)t5);
    t15 = (t13 - 1);
    t16 = (t15 * 1);
    xsi_vhdl_check_range_of_index(1, 100, 1, *((int *)t5));
    t17 = (1U * t16);
    t7 = (t0 + 3528U);
    t8 = *((char **)t7);
    t18 = *((int *)t8);
    t19 = (t18 - 1);
    t20 = (t19 * 1);
    xsi_vhdl_check_range_of_index(1, 15, 1, t18);
    t21 = (104U * t20);
    t22 = (0 + t21);
    t23 = (t22 + 0U);
    t24 = (t23 + t17);
    t7 = (t6 + t24);
    t3 = *((unsigned char *)t7);
    t9 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t14, ((int)(t3)), 8);
    t10 = (t0 + 12928);
    t25 = *((int *)t10);
    t26 = (t25 - 1);
    t27 = (t26 * 8);
    t28 = (815 - t27);
    t29 = (t0 + 12928);
    t30 = *((int *)t29);
    t31 = (t30 * 8);
    t32 = (815 - t31);
    t33 = (t32 + 1);
    t34 = (t33 - t28);
    t35 = (t34 * -1);
    t35 = (t35 + 1);
    t36 = (1U * t35);
    t37 = (t14 + 12U);
    t38 = *((unsigned int *)t37);
    t38 = (t38 * 1U);
    t4 = (t36 != t38);
    if (t4 == 1)
        goto LAB11;

LAB12:    t39 = (t0 + 12928);
    t40 = *((int *)t39);
    t41 = (t40 - 1);
    t42 = (t41 * 8);
    t43 = (815 - t42);
    t44 = (815 - t43);
    t45 = (1U * t44);
    t46 = (0U + t45);
    t47 = (t0 + 5792);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    t52 = (t0 + 12928);
    t53 = *((int *)t52);
    t54 = (t53 - 1);
    t55 = (t54 * 8);
    t56 = (815 - t55);
    t57 = (t0 + 12928);
    t58 = *((int *)t57);
    t59 = (t58 * 8);
    t60 = (815 - t59);
    t61 = (t60 + 1);
    t62 = (t61 - t56);
    t63 = (t62 * -1);
    t63 = (t63 + 1);
    t64 = (1U * t63);
    memcpy(t51, t9, t64);
    t65 = (t0 + 12928);
    t66 = *((int *)t65);
    t67 = (t66 - 1);
    t68 = (t67 * 8);
    t69 = (815 - t68);
    t70 = (t0 + 12928);
    t71 = *((int *)t70);
    t72 = (t71 * 8);
    t73 = (815 - t72);
    t74 = (t73 + 1);
    t75 = (t74 - t69);
    t76 = (t75 * -1);
    t76 = (t76 + 1);
    t77 = (1U * t76);
    xsi_driver_first_trans_delta(t47, t46, t77, 0LL);

LAB9:    t1 = (t0 + 12928);
    t11 = *((int *)t1);
    t2 = (t0 + 12932);
    t12 = *((int *)t2);
    if (t11 == t12)
        goto LAB10;

LAB13:    t13 = (t11 + 1);
    t11 = t13;
    t5 = (t0 + 12928);
    *((int *)t5) = t11;
    goto LAB7;

LAB11:    xsi_size_not_matching(t36, t38, 0);
    goto LAB12;

}

static void work_a_0171225817_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    int t16;

LAB0:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1472U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5696);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 5920);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 5984);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 5984);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(114, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 10304U);
    t9 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t2, t1);
    t5 = (t0 + 3768U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    *((int *)t5) = t9;
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 3768U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    if (t9 == 49)
        goto LAB8;

LAB13:    if (t9 == 50)
        goto LAB9;

LAB14:    if (t9 == 51)
        goto LAB10;

LAB15:    if (t9 == 52)
        goto LAB11;

LAB16:
LAB12:    xsi_set_current_line(121, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;

LAB7:    xsi_set_current_line(126, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t1 = (t0 + 3408U);
    t5 = *((char **)t1);
    t1 = (t0 + 2792U);
    t6 = *((char **)t1);
    t10 = *((int *)t6);
    t11 = (t10 - 1);
    t12 = (t11 * 1);
    xsi_vhdl_check_range_of_index(1, 15, 1, t10);
    t13 = (104U * t12);
    t14 = (0 + t13);
    t15 = (t14 + 100U);
    t1 = (t5 + t15);
    t16 = *((int *)t1);
    t3 = (t9 == t16);
    if (t3 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(130, ng0);
    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 5920);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB19:    goto LAB3;

LAB8:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 3888U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 1;
    goto LAB7;

LAB9:    xsi_set_current_line(118, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 2;
    goto LAB7;

LAB10:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 3;
    goto LAB7;

LAB11:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 4;
    goto LAB7;

LAB17:;
LAB18:    xsi_set_current_line(127, ng0);
    t7 = (t0 + 3648U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_set_current_line(128, ng0);
    t1 = (t0 + 5920);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB19;

}

static void work_a_0171225817_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(140, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 6048);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 816U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5712);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0171225817_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0171225817_3212880686_p_0,(void *)work_a_0171225817_3212880686_p_1,(void *)work_a_0171225817_3212880686_p_2};
	xsi_register_didat("work_a_0171225817_3212880686", "isim/QUIZ_isim_beh.exe.sim/work/a_0171225817_3212880686.didat");
	xsi_register_executes(pe);
}

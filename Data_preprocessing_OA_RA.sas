/*library*/
LIBNAME WEZE 'C:\Users\user\OneDrive\?? ??\????\1st_practice\WEZE';

/*data preprocessing*/
/*smoking naming*/
data HN05_all; set WEZE.hn05_all; rename BS3_1=smoking; run;
data HN07_all; set WEZE.hn07_all; rename BS3_1=smoking; run;
data HN08_all; set WEZE.hn08_all; rename BS3_1=smoking; run;
data HN09_all; set WEZE.hn09_all; rename BS3_1=smoking; run;
data HN10_all; set WEZE.hn10_all; rename BS3_1=smoking; run;
data HN11_all; set WEZE.hn11_all; rename BS3_1=smoking; run;
data HN12_all; set WEZE.hn12_all; rename BS3_1=smoking; run;
data HN13_all; set WEZE.hn13_all; rename BS3_1=smoking; run;
data HN14_all; set WEZE.hn14_all; rename BS3_1=smoking; run;
data HN15_all; set WEZE.hn15_all; rename BS3_1=smoking; run;
data HN16_all; set WEZE.hn16_all; rename BS3_1=smoking; run;
data HN17_all; set WEZE.hn17_all; rename BS3_1=smoking; run;
data HN18_all; set WEZE.HN18_all; rename BS3_1=smoking; run;
data HN19_all; set WEZE.HN19_all; rename BS3_1=smoking; run;
data HN20_all; set WEZE.HN20_all; rename BS3_1=smoking; run;
data HN21_all; set WEZE.HN21_all; rename BS3_1=smoking; run;

/*two diseases naming*/
/*rheumatoid arthritis naming(rheum)*/
data HN05_all; set HN05_all; rename DM3_dg=rheum; run;
data HN07_all; set HN07_all; rename DM3_dg=rheum; run;
data HN08_all; set HN08_all; rename DM3_dg=rheum; run;
data HN09_all; set HN09_all; rename DM3_dg=rheum; run;
data HN10_all; set HN10_all; rename DM3_dg=rheum; run;
data HN11_all; set HN11_all; rename DM3_dg=rheum; run;
data HN12_all; set HN12_all; rename DM3_dg=rheum; run;
data HN13_all; set HN13_all; rename DM3_dg=rheum; run;
data HN14_all; set HN14_all; rename DM3_dg=rheum; run;
data HN15_all; set HN15_all; rename DM3_dg=rheum; run;
data HN16_all; set HN16_all; rename DM3_dg=rheum; run;
data HN17_all; set HN17_all; rename DM3_dg=rheum; run;
data HN18_all; set HN18_all; rename DM3_dg=rheum; run;
data HN19_all; set HN19_all; rename DM3_dg=rheum; run;
data HN20_all; set HN20_all; rename DM3_dg=rheum; run;
data HN21_all; set HN21_all; rename DM3_dg=rheum; run;
/*osteoarthritis naming(osteo)*/
data HN05_all; set HN05_all; rename DM2_dg=osteo; run;
data HN07_all; set HN07_all; rename DM2_dg=osteo; run;
data HN08_all; set HN08_all; rename DM2_dg=osteo; run;
data HN09_all; set HN09_all; rename DM2_dg=osteo; run;
data HN10_all; set HN10_all; rename DM2_dg=osteo; run;
data HN11_all; set HN11_all; rename DM2_dg=osteo; run;
data HN12_all; set HN12_all; rename DM2_dg=osteo; run;
data HN13_all; set HN13_all; rename DM2_dg=osteo; run;
data HN14_all; set HN14_all; rename DM2_dg=osteo; run;
data HN15_all; set HN15_all; rename DM2_dg=osteo; run;
data HN16_all; set HN16_all; rename DM2_dg=osteo; run;
data HN17_all; set HN17_all; rename DM2_dg=osteo; run;
data HN18_all; set HN18_all; rename DM2_dg=osteo; run;
data HN19_all; set HN19_all; rename DM2_dg=osteo; run;
data HN20_all; set HN20_all; rename DM2_dg=osteo; run;
data HN21_all; set HN21_all; rename DM2_dg=osteo; run;

/*columns extract*/
data HN05_all;
set HN05_all;
keep year age psu sex town_t ho_incm educ smoking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data HN07_all;
set HN07_all;
keep year age psu sex town_t ho_incm educ smoking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data HN08_all;
set HN08_all;
keep year age psu sex town_t ho_incm educ smoking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data HN09_all;
set HN09_all;
keep year age psu sex town_t ho_incm educ smoking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data HN10_all;
set HN10_all;
keep year age psu sex town_t ho_incm educ smoking HE_WT HE_HT HE_WC osteo rheum wt_itvex kstrata;
run;

data HN11_all;
set HN11_all;
keep year age psu sex town_t ho_incm educ smoking HE_WT HE_HT HE_WC osteo rheum wt_itvex kstrata;
run;

data HN12_all;
set HN12_all;
keep year age psu sex town_t ho_incm educ smoking HE_WT HE_HT HE_WC osteo rheum wt_itvex kstrata;
run;

data HN13_all;
set HN13_all;
keep year age psu sex town_t ho_incm educ smoking HE_WT HE_HT HE_WC osteo rheum wt_itvex kstrata;
run;

data HN14_all;
set HN14_all;
keep year age psu sex town_t ho_incm educ smoking HE_WT HE_HT HE_WC osteo rheum wt_itvex kstrata;
run;

data HN15_all;
set HN15_all;
keep year age psu sex town_t ho_incm educ smoking HE_WT HE_HT HE_WC osteo rheum wt_itvex kstrata;
run;

data HN16_all;
set HN16_all;
keep year age psu sex town_t ho_incm educ smoking HE_WT HE_HT HE_WC osteo rheum wt_itvex kstrata;
run;

data HN17_all;
set HN17_all;
keep year age psu sex town_t ho_incm educ smoking HE_WT HE_HT HE_WC osteo rheum wt_itvex kstrata;
run;

data HN18_all;
set HN18_all;
keep year age psu sex town_t ho_incm educ smoking HE_WT HE_HT HE_WC osteo rheum wt_itvex kstrata;
run;

data HN19_all;
set HN19_all;
keep year age psu sex town_t ho_incm educ smoking HE_WT HE_HT HE_WC osteo rheum wt_itvex kstrata;
run;

data HN20_all;
set HN20_all;
keep year age psu sex town_t ho_incm educ smoking HE_WT HE_HT HE_WC osteo rheum wt_itvex kstrata;
run;

data HN21_all;
set HN21_all;
keep year age psu sex town_t ho_incm educ smoking HE_WT HE_HT HE_WC osteo rheum wt_itvex kstrata;
run;


/*education classify*/
data educ_05;
set HN05_all;
if educ=0 then grade=1;
else if educ=1 then grade=1;
else if educ=2 then grade=1;
else if educ=3 then grade=2;
else if educ=4 then grade=3;
else if educ=5 then grade=4;
else if educ=6 then grade=4;
else grade=5;
run;

data educ_07;
set HN07_all;
if educ=1 then grade=1;
else if educ=2 then grade=1;
else if educ=3 then grade=1;
else if educ=4 then grade=1;
else if educ=5 then grade=2;
else if educ=6 then grade=3;
else if educ=7 then grade=4;
else if educ=8 then grade=4;
else if educ=9 then grade=4;
else grade=5;
run;

data educ_08;
set HN08_all;
if educ=1 then grade=1;
else if educ=2 then grade=1;
else if educ=3 then grade=1;
else if educ=4 then grade=1;
else if educ=5 then grade=2;
else if educ=6 then grade=3;
else if educ=7 then grade=4;
else if educ=8 then grade=4;
else if educ=9 then grade=4;
else grade=5;
run;

data educ_09;
set HN09_all;
if educ=1 then grade=1;
else if educ=2 then grade=1;
else if educ=3 then grade=1;
else if educ=4 then grade=1;
else if educ=5 then grade=2;
else if educ=6 then grade=3;
else if educ=7 then grade=4;
else if educ=8 then grade=4;
else if educ=9 then grade=4;
else grade=5;
run;

data educ_10;
set HN10_all;
if educ=1 then grade=1;
else if educ=2 then grade=1;
else if educ=3 then grade=1;
else if educ=4 then grade=2;
else if educ=5 then grade=3;
else if educ=6 then grade=4;
else if educ=7 then grade=4;
else if educ=8 then grade=4;
else grade=5;
run;

data educ_11;
set HN11_all;
if educ=1 then grade=1;
else if educ=2 then grade=1;
else if educ=3 then grade=1;
else if educ=4 then grade=2;
else if educ=5 then grade=3;
else if educ=6 then grade=4;
else if educ=7 then grade=4;
else if educ=8 then grade=4;
else grade=5;
run;

data educ_12;
set HN12_all;
if educ=1 then grade=1;
else if educ=2 then grade=1;
else if educ=3 then grade=1;
else if educ=4 then grade=2;
else if educ=5 then grade=3;
else if educ=6 then grade=4;
else if educ=7 then grade=4;
else if educ=8 then grade=4;
else grade=5;
run;

data educ_13;
set HN13_all;
if educ=1 then grade=1;
else if educ=2 then grade=1;
else if educ=3 then grade=1;
else if educ=4 then grade=2;
else if educ=5 then grade=3;
else if educ=6 then grade=4;
else if educ=7 then grade=4;
else if educ=8 then grade=4;
else grade=5;
run;

data educ_14;
set HN14_all;
if educ=1 then grade=1;
else if educ=2 then grade=1;
else if educ=3 then grade=1;
else if educ=4 then grade=2;
else if educ=5 then grade=3;
else if educ=6 then grade=4;
else if educ=7 then grade=4;
else if educ=8 then grade=4;
else grade=5;


data educ_15;
set HN15_all;
if educ=1 then grade=1;
else if educ=2 then grade=1;
else if educ=3 then grade=1;
else if educ=4 then grade=2;
else if educ=5 then grade=3;
else if educ=6 then grade=4;
else if educ=7 then grade=4;
else if educ=8 then grade=4;
else grade=5;
run;

data educ_16;
set HN16_all;
if educ=1 then grade=1;
else if educ=2 then grade=1;
else if educ=3 then grade=1;
else if educ=4 then grade=2;
else if educ=5 then grade=3;
else if educ=6 then grade=4;
else if educ=7 then grade=4;
else if educ=8 then grade=4;
else grade=5;
run;

data educ_17;
set HN17_all;
if educ=1 then grade=1;
else if educ=2 then grade=1;
else if educ=3 then grade=1;
else if educ=4 then grade=2;
else if educ=5 then grade=3;
else if educ=6 then grade=4;
else if educ=7 then grade=4;
else if educ=8 then grade=4;
else grade=5;
run;

data educ_18;
set HN18_all;
if educ=1 then grade=1;
else if educ=2 then grade=1;
else if educ=3 then grade=1;
else if educ=4 then grade=2;
else if educ=5 then grade=3;
else if educ=6 then grade=4;
else if educ=7 then grade=4;
else if educ=8 then grade=4;
else grade=5;
run;

data educ_19;
set HN19_all;
if educ=1 then grade=1;
else if educ=2 then grade=1;
else if educ=3 then grade=1;
else if educ=4 then grade=2;
else if educ=5 then grade=3;
else if educ=6 then grade=4;
else if educ=7 then grade=4;
else if educ=8 then grade=4;
else grade=5;
run;

data educ_20;
set HN20_all;
if educ=1 then grade=1;
else if educ=2 then grade=1;
else if educ=3 then grade=1;
else if educ=4 then grade=2;
else if educ=5 then grade=3;
else if educ=6 then grade=4;
else if educ=7 then grade=4;
else if educ=8 then grade=4;
else grade=5;
run;

data educ_21;
set HN21_all;
if educ=1 then grade=1;
else if educ=2 then grade=1;
else if educ=3 then grade=1;
else if educ=4 then grade=2;
else if educ=5 then grade=3;
else if educ=6 then grade=4;
else if educ=7 then grade=4;
else if educ=8 then grade=4;
else grade=5;
run;


/*smoking classify*/
data smoking_05;
set educ_05;
if smoking=1 then smoking=1;
else if smoking=2 then smoking=1;
else if smoking=3 then smoking=2;
else if smoking=8 then smoking=3;
else if smoking=9 then smoking=3;
else if smoking="" then smoking=8;
else smoking=8;
run;

data smoking_07;
set educ_07;
if smoking=1 then smoking=1;
else if smoking=2 then smoking=2;
else if smoking=8 then smoking=3;
else if smoking=9 then smoking=3;
else if smoking="" then smoking=8;
else smoking=8;
run;

data smoking_08;
set educ_08;
if smoking=1 then smoking=1;
else if smoking=2 then smoking=2;
else if smoking=8 then smoking=3;
else if smoking=9 then smoking=3;
else if smoking="" then smoking=8;
else smoking=8;
run;

data smoking_09;
set educ_09;
if smoking=1 then smoking=1;
else if smoking=2 then smoking=2;
else if smoking=8 then smoking=3;
else if smoking=9 then smoking=3;
else if smoking="" then smoking=8;
else smoking=8;
run;

data smoking_10;
set educ_10;
if smoking=1 then smoking=1;
else if smoking=2 then smoking=1;
else if smoking=3 then smoking=2;
else if smoking=8 then smoking=3;
else if smoking=9 then smoking=3;
else if smoking="" then smoking=8;
else smoking=8;
run;

data smoking_11;
set educ_11;
if smoking=1 then smoking=1;
else if smoking=2 then smoking=1;
else if smoking=3 then smoking=2;
else if smoking=8 then smoking=3;
else if smoking=9 then smoking=3;
else if smoking="" then smoking=8;
else smoking=8;
run;

data smoking_12;
set educ_12;
if smoking=1 then smoking=1;
else if smoking=2 then smoking=1;
else if smoking=3 then smoking=2;
else if smoking=8 then smoking=3;
else if smoking=9 then smoking=3;
else if smoking="" then smoking=8;
else smoking=8;
run;

data smoking_13;
set educ_13;
if smoking=1 then smoking=1;
else if smoking=2 then smoking=1;
else if smoking=3 then smoking=2;
else if smoking=8 then smoking=3;
else if smoking=9 then smoking=3;
else if smoking="" then smoking=8;
else smoking=8;
run;

data smoking_14;
set educ_14;
if BS3_1=1 then smoking=1;
else if smoking=2 then smoking=1;
else if smoking=3 then smoking=2;
else if smoking=8 then smoking=3;
else if smoking=9 then smoking=3;
else if smoking="" then smoking=8;
else smoking=8;
run;

data smoking_15;
set educ_15;
if smoking=1 then smoking=1;
else if smoking=2 then smoking=1;
else if smoking=3 then smoking=2;
else if smoking=8 then smoking=3;
else if smoking=9 then smoking=3;
else if smoking="" then smoking=8;
else smoking=8;
run;

data smoking_16;
set educ_16;
if smoking=1 then smoking=1;
else if smoking=2 then smoking=1;
else if smoking=3 then smoking=2;
else if smoking=8 then smoking=3;
else if smoking=9 then smoking=3;
else if smoking="" then smoking=8;
else smoking=8;
run;

data smoking_17;
set educ_17;
if smoking=1 then smoking=1;
else if smoking=2 then smoking=1;
else if smoking=3 then smoking=2;
else if smoking=8 then smoking=3;
else if smoking=9 then smoking=3;
else smoking=8;
run;

data smoking_18;
set educ_18;
if smoking=1 then smoking=1;
else if smoking=2 then smoking=1;
else if smoking=3 then smoking=2;
else if smoking=8 then smoking=3;
else if smoking=9 then smoking=3;
else if smoking="" then smoking=8;
else smoking=8;
run;

data smoking_19;
set educ_19;
if smoking=1 then smoking=1;
else if smoking=2 then smoking=1;
else if smoking=3 then smoking=2;
else if smoking=8 then smoking=3;
else if smoking=9 then smoking=3;
else if smoking="" then smoking=8;
else smoking=8;
run;

data smoking_20;
set educ_20;
if smoking=1 then smoking=1;
else if smoking=2 then smoking=1;
else if smoking=3 then smoking=2;
else if smoking=8 then smoking=3;
else if smoking=9 then smoking=3;
else if smoking="" then smoking=8;
else smoking=8;
run;

data smoking_21;
set educ_21;
if smoking=1 then smoking=1;
else if smoking=2 then smoking=1;
else if smoking=3 then smoking=2;
else if smoking=8 then smoking=3;
else if smoking=9 then smoking=3;
else if smoking="" then smoking=8;
else smoking=8;
run;

/*merge smoking datas*/
data y;
set smoking_05  smoking_07  smoking_08	smoking_09	smoking_10	smoking_11	smoking_12	smoking_13	smoking_14	smoking_15	smoking_16	smoking_17	smoking_18	smoking_19	smoking_20	smoking_21;
run;

proc freq data=y;
table osteo rheum;
run;


/*disease classify*/
data y;
set y;
if osteo=1 then osteo=1;
if osteo in (0 8 9) then osteo=0;
if osteo=. then osteo=0;
if osteo="" then osteo=0;
run;

data y;
set y;
if rheum=1 then rheum=1;
if rheum in (0 8 9) then rheum=0;
if rheum=. then rheum=0;
if rheum="" then rheum=0;
run;

proc freq data=y;
table osteo rheum;
run;


/*total weight arrange*/
proc sort data=y nodupkey out=test;
by year psu;
run;

data _2005   _2007   _2008   _2009   _2010   _2011   _2012   _2013   _2014   _2015   _2016   _2017   _2018   _2019   _2020   _2021;
set test;
if year=2005 then output _2005;
if year=2007 then output _2007;
if year=2008 then output _2008;
if year=2009 then output _2009;
if year=2010 then output _2010;
if year=2011 then output _2011;
if year=2012 then output _2012;
if year=2013 then output _2013;
if year=2014 then output _2014;
if year=2015 then output _2015;
if year=2016 then output _2016;
if year=2017 then output _2017;
if year=2018 then output _2018;
if year=2019 then output _2019;
if year=2020 then output _2020;
if year=2021 then output _2021;
run;

/*total weight*/
data y2;
set y;
if year in (2005 2007 2008 2009) then wt_itvex=wt_itv;
run;


/*total weight_base*/
data y2;
set y2;
label wt_total='total weight';
if year=2005 then wt_total=wt_itvex*(600/3392);
if year=2007 then wt_total=wt_itvex*(100/3392);
else if year=2008 then wt_total=wt_itvex*(200/3392);
else if year=2009 then wt_total=wt_itvex*(200/3392);
else if year=2010 then wt_total=wt_itvex*(192/3392);
else if year=2011 then wt_total=wt_itvex*(192/3392);
else if year=2012 then wt_total=wt_itvex*(192/3392);
else if year=2013 then wt_total=wt_itvex*(192/3392);
else if year=2014 then wt_total=wt_itvex*(192/3392);
else if year=2015 then wt_total=wt_itvex*(192/3392);
else if year=2016 then wt_total=wt_itvex*(192/3392);
else if year=2017 then wt_total=wt_itvex*(192/3392);
else if year=2018 then wt_total=wt_itvex*(192/3392);
else if year=2019 then wt_total=wt_itvex*(192/3392);
else if year=2020 then wt_total=wt_itvex*(180/3392);
else if year=2021 then wt_total=wt_itvex*(192/3392);
run;


/*age classify*/
data y3;
set y2;
if 19 <= age =< 29 then age_g=1;
else if 30 =< age =< 39 then age_g=2;
else if 40 =< age =< 49 then age_g=3;
else if 50 =< age =< 59 then age_g=4;
else if 60 =< age =< 69 then age_g=5;
else if 70 =< age =< 79 then age_g=6;
else if 80 =< age then age_g=7;
run;

/*bmi classify*/
data y3;
set y3;
if he_BMI=. then he_bmi=(he_wt/(he_ht*he_ht))*10000;
run;

data y3;
set y3;
if 0< he_BMI <18.5 then bmi=1; /*Underweight*/
else if 18.5<= he_BMI < 23 then bmi=2; /*Normal weight and overweight*/
else if 23<= he_BMI < 25 then bmi=3; /*Normal weight and overweight*/ 
else if 25<= he_BMI then bmi=4;/*Obesity*/
else bmi=8;/*Unknown*/
run;

proc freq data=y3;
table bmi;
run;

/*for checking*/
proc freq data=y3;
	table subject;
run;

/*missing value*/
proc freq data=y3;
	table year age_g psu sex town_t ho_incm grade bmi smoking osteo rheum wt_itvex kstrata;
run;
/*result: revise /age_g: 34720/ho_incm: 2175/wt_itvex: 6396*/

data y4; 
set y3;
if age_g=. then subject=0;
else if age_g="" then subject=0;
run;
proc freq data=y4; table subject; run;
/*Total : 119606, 34720*/

data y4; set y4;
if ho_incm=. then subject=0;
else if ho_incm="" then subject=0; run;
proc freq data=y4; table subject; run; 
/*Total : 118133, 36193*/

data y4; set y4;
if wt_itvex=. then subject=0;
else if wt_itvex="" then subject=0; run;
proc freq data=y4; table subject; run; 
/*Total : 113378, 40948*/

data y5; set y4;
if subject=. then subject=1;
run;
proc freq data=y5;
table subject;
run;   
/*subject 1=113378, subject 0=40948*/

/*for checking*/
proc freq data=y5;
	where subject=1;
	table age_g ho_incm grade year sex town_t bmi smoking osteo rheum;
run;

/*individual ratio weight using total weight*/
data y6;
set y5;
if year=2005 then do;
wt_ind=wt_itvex*(600/700);
end;
if year=2007 then do;
wt_ind=wt_itvex*(100/700);
end;
if year=2008 then do;
wt_ind=wt_itvex*(200/592);
end;
if year=2009 then do;
wt_ind=wt_itvex*(200/592);
end;
if year=2010 then do;
wt_ind=wt_itvex*(192/592);
end;
if year=2011 then do;
wt_ind=wt_itvex*(1/3);
end;
if year=2012 then do;
wt_ind=wt_itvex*(1/3);
end;
if year=2013 then do;
wt_ind=wt_itvex*(1/3);
end;
if year=2014 then do;
wt_ind=wt_itvex*(1/3);
end;
if year=2015 then do;
wt_ind=wt_itvex*(1/3);
end;
if year=2016 then do;
wt_ind=wt_itvex*(1/3);
end;
if year=2017 then do;
wt_ind=wt_itvex*(1/3);
end;
if year=2018 then do;
wt_ind=wt_itvex*(1/3);
end;
if year=2019 then do;
wt_ind=wt_itvex*(1/3);
end;
if year=2020 then do;
wt_ind=wt_itvex*(1);
end;
if year=2021 then do;
wt_ind=wt_itvex*(1);
end;
run;

/*period groups*/
data y7; 
set y6;
length period $4 ;
label period=period groups;
if 2005<=year<=2007 then period = 1;
else if 2008<=year<=2010 then period = 2;
else if 2011<=year<=2013 then period = 3;
else if 2014<=year<=2016 then period = 4;
else if 2017<=year<=2019 then period = 5;
else if year=2020 then period = 6;
else if year=2021 then period = 7;
run;
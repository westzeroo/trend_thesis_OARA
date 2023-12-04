/*library*/
LIBNAME WEZE "C:\Users\psy99\OneDrive\바탕 화면\논문조사\1st_practice\WEZE";

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

/*drinking naming*/
data HN05_all; set hn05_all; rename BD1_12=drinking; run;
data HN07_all; set hn07_all; rename BD1_11=drinking; run;
data HN08_all; set hn08_all; rename BD1_11=drinking; run;
data HN09_all; set hn09_all; rename BD1_11=drinking; run;
data HN10_all; set hn10_all; rename BD1_11=drinking; run;
data HN11_all; set hn11_all; rename BD1_11=drinking; run;
data HN12_all; set hn12_all; rename BD1_11=drinking; run;
data HN13_all; set hn13_all; rename BD1_11=drinking; run;
data HN14_all; set hn14_all; rename BD1_11=drinking; run;
data HN15_all; set hn15_all; rename BD1_11=drinking; run;
data HN16_all; set hn16_all; rename BD1_11=drinking; run;
data HN17_all; set hn17_all; rename BD1_11=drinking; run;
data HN18_all; set HN18_all; rename BD1_11=drinking; run;
data HN19_all; set HN19_all; rename BD1_11=drinking; run;
data HN20_all; set HN20_all; rename BD1_11=drinking; run;
data HN21_all; set HN21_all; rename BD1_11=drinking; run;


/*two diseases naming*/
/*rheumatoid arthritis naming(rheum)*/
data HN05_all; set hn05_all; rename DM3_dg=rheum; run;
data HN07_all; set hn07_all; rename DM3_dg=rheum; run;
data HN08_all; set hn08_all; rename DM3_dg=rheum; run;
data HN09_all; set hn09_all; rename DM3_dg=rheum; run;
data HN10_all; set hn10_all; rename DM3_dg=rheum; run;
data HN11_all; set hn11_all; rename DM3_dg=rheum; run;
data HN12_all; set HN12_all; rename DM3_dg=rheum; run;
data HN13_all; set hn13_all; rename DM3_dg=rheum; run;
data HN14_all; set hn14_all; rename DM3_dg=rheum; run;
data HN15_all; set hn15_all; rename DM3_dg=rheum; run;
data HN16_all; set hn16_all; rename DM3_dg=rheum; run;
data HN17_all; set hn17_all; rename DM3_dg=rheum; run;
data HN18_all; set HN18_all; rename DM3_dg=rheum; run;
data HN19_all; set HN19_all; rename DM3_dg=rheum; run;
data HN20_all; set HN20_all; rename DM3_dg=rheum; run;
data HN21_all; set HN21_all; rename DM3_dg=rheum; run;

/*osteoarthritis naming(osteo)*/
data HN05_all; set hn05_all; rename DM2_dg=osteo; run;
data HN07_all; set hn07_all; rename DM2_dg=osteo; run;
data HN08_all; set hn08_all; rename DM2_dg=osteo; run;
data HN09_all; set hn09_all; rename DM2_dg=osteo; run;
data HN10_all; set hn10_all; rename DM2_dg=osteo; run;
data HN11_all; set hn11_all; rename DM2_dg=osteo; run;
data HN12_all; set hn12_all; rename DM2_dg=osteo; run;
data HN13_all; set hn13_all; rename DM2_dg=osteo; run;
data HN14_all; set hn14_all; rename DM2_dg=osteo; run;
data HN15_all; set hn15_all; rename DM2_dg=osteo; run;
data HN16_all; set hn16_all; rename DM2_dg=osteo; run;
data HN17_all; set hn17_all; rename DM2_dg=osteo; run;
data HN18_all; set HN18_all; rename DM2_dg=osteo; run;
data HN19_all; set HN19_all; rename DM2_dg=osteo; run;
data HN20_all; set HN20_all; rename DM2_dg=osteo; run;
data HN21_all; set HN21_all; rename DM2_dg=osteo; run;


/*columns extract*/
data HN05_ALL;
set hn05_ALL;
keep year age psu sex town_t ho_incm educ smoking drinking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data HN07_ALL;
set hn07_ALL;
keep year age psu sex town_t ho_incm educ smoking drinking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data HN08_ALL;
set hn08_ALL;
keep year age psu sex town_t ho_incm educ smoking drinking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data hn09_ALL;
set hn09_ALL;
keep year age psu sex town_t ho_incm educ smoking drinking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data hn10_ALL;
set hn10_ALL;
keep year age psu sex town_t ho_incm educ smoking drinking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data hn11_ALL;
set hn11_ALL;
keep year age psu sex town_t ho_incm educ smoking drinking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data HN12_ALL;
set hn12_ALL;
keep year age psu sex town_t ho_incm educ smoking drinking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data HN13_ALL;
set hn13_ALL;
keep year age psu sex town_t ho_incm educ smoking drinking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data HN14_ALL;
set hn14_ALL;
keep year age psu sex town_t ho_incm educ smoking drinking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data HN15_ALL;
set hn15_ALL;
keep year age psu sex town_t ho_incm educ smoking drinking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data HN16_ALL;
set hn16_ALL;
keep year age psu sex town_t ho_incm educ smoking drinking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data HN17_ALL;
set hn17_ALL;
keep year age psu sex town_t ho_incm educ smoking drinking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data HN18_ALL;
set HN18_ALL;
keep year age psu sex town_t ho_incm educ smoking drinking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data HN19_ALL;
set HN19_ALL;
keep year age psu sex town_t ho_incm educ smoking drinking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data HN20_ALL;
set HN20_ALL;
keep year age psu sex town_t ho_incm educ smoking drinking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;

data HN21_ALL;
set HN21_ALL;
keep year age psu sex town_t ho_incm educ smoking drinking HE_WT HE_HT HE_WC osteo rheum wt_itv kstrata;
run;


/*education classify*/
data educ_05;
set hn05_all;
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
set hn07_all;
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
set hn08_all;
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
set hn09_all;
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
set hn10_all;
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
set hn11_all;
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
set hn12_all;
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
set hn13_all;
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
set hn14_all;
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

data educ_15;
set hn15_all;
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
set hn16_all;
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
set hn17_all;
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
set Hn18_all;
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
set Hn19_all;
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
set Hn20_all;
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
set Hn21_all;
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

/*년도별 데이터 합치기*/
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
if year in (2005) then wt_bhvex=wt_itv;
run;
data y2;
set y;
if year in (2007 2008 2009) then wt_itvex=wt_itv;
run;


/*total weight*/
/*data y2;
set y2;
label wt_total='통합가중치';
if year=2005 then wt_total=wt_itvex*(600/3392);
if year=2007 then wt_total=wt_itvex*(100/2792);
else if year=2008 then wt_total=wt_itvex*(200/2792);
else if year=2009 then wt_total=wt_itvex*(200/2792);
else if year=2010 then wt_total=wt_itvex*(192/2792);
else if year=2011 then wt_total=wt_itvex*(192/2792);
else if year=2012 then wt_total=wt_itvex*(192/2792);
else if year=2013 then wt_total=wt_itvex*(192/2792);
else if year=2014 then wt_total=wt_itvex*(192/2792);
else if year=2015 then wt_total=wt_itvex*(192/2792);
else if year=2016 then wt_total=wt_itvex*(192/2792);
else if year=2017 then wt_total=wt_itvex*(192/2792);
else if year=2018 then wt_total=wt_itvex*(192/2792);
else if year=2019 then wt_total=wt_itvex*(192/2792);
else if year=2020 then wt_total=wt_itvex*(192/2792);
else if year=2021 then wt_total=wt_itvex*(180/2792);
run;*/

/*age classify*/
data y3;
set y2;
if 19 <= age =< 29 then old_2=1;
else if 30 =< age =< 39 then old_2=2;
else if 40 =< age =< 49 then old_2=3;
else if 50 =< age =< 59 then old_2=4;
else if 60 =< age =< 69 then old_2=5;
else if 70 =< age =< 79 then old_2=6;
else if 80 =< age then old_2=7
run;

/*bmi classify*/
data y4;
set y3;
if he_BMI=. then he_bmi=(he_wt/(he_ht*he_ht))*10000;
run;

data y4;
set y4;
if 0< he_BMI <18.5 then bmi=1; /*저체중*/
else if 18.5<= he_BMI < 23 then bmi=2; /*정상체중*/
else if 23<= he_BMI < 25 then bmi=3; /*과체중*/
else if 25<= he_BMI then bmi=4; /*비만*/
else bmi=8;
run;

 proc freq data=y4;
table bmi;
run;


/*driniking classfiy*/
data y4;
set y4;
if year in (2005) and drinking=0 then drinking_1 = 1; /*Non-drinker*/
else if year in (2005) and drinking=88 then drinking_1 = 1; /*Non-drinker*/
else if year in (2005) and 1<= drinking <=5  then drinking_1 = 2; /*1~5days/month*/
else if year in (2005) and 6<= drinking <=31  then drinking_1 = 3; /*6~30days/month*/
else if year in (2005) then drinking_1=8; /*Unknown*/
run;

data y4;
set y4;
if year in (2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020 2021) and drinking in (8 9) then drinking_1 = 1;
else if year in (2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020 2021) and drinking in (1 2 3 4) then drinking_1=2;
else if year in (2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020 2021) and drinking in (5 6) then drinking_1=3;
else if year in (2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020 2021) then drinking_1=8;
run;

data y4;
set y4;
if year in (2005 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020 2021) and drinking="." then drinking_1 = 8;
if year in (2005 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020 2021) and drinking="" then drinking_1 = 8;
run;

proc freq data=y5;
table year old_2 sex town_t ho_incm grade smoking drinking_1 BMI diabetes stroke heart cancer1 cancer2 cancer3 cancer4 cancer5 cancer6 kidney osteo vday1 vmin1 mday1 mmin1 vwday vwmin vlday vlmin mwday mwmin mlday mlmin;
run;

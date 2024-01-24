/*Table2*/
/*Binary processing*/
data y8; 
set y7;
if grade in (1 2) then grade_1=1;  /*high school or lower education*/
else if grade in (3 4) then grade_1=2; /*college or higher education*/
run;
data y9; 
set y8;
if grade_1=. then subject=0;
run;

data y11; 
set y9;
if ho_incm in (1 2) then ho_incm_2=1; /*lowest and second quartile*/
else if ho_incm in (3 4) then ho_incm_2=2; /*hird and highest quartile*/
run;

data y12; 
set y11;
if smoking in (1 2) then smoking_2=1;  /*smoker or ex-smoker*/
else if smoking in (3 8) then smoking_2=2; /*non-smoker*/
run;

data y13; 
set y12;
if bmi in (3 4) then bmi_2=1; /*overweight or obese*/
else if bmi in (1 2 8) then bmi_2=2; /*underweight or normal*/
run;

/*age reclassify*/
data y14;
set y13;
if 19 <= age =< 39 then age_gg=1;
else if 40 =< age =< 59 then age_gg=2;
else if 60 =< age then age_gg=3;
run;

/*checking*/
proc freq data=y14;
where subject=1;
table age_g age_gg sex bmi_2 grade grade_1 ho_incm_2 smoking_2 osteo rheum;
run;
data y15;
    set y14;
run;

/*RA prevalence*/
data y15; 
set y15; 
if subject=1 and sex=1  and rheum=1 then both=1;
else if subject=1 and sex=1  and rheum=0 then both=0; 
run;

/*male*/
/*RA w/ age_g*/
data y15; 
set y15; 
if subject=1 and sex=1  and rheum=1 and age_gg = 1 then a1_b=1; 
else if subject=1 and sex=1  and rheum=0  and age_gg = 1 then a1_b=0; 
run;

data y15; 
set y15; 
if subject=1 and sex=1  and rheum=1 and age_gg = 2 then a2_b=1; 
else if subject=1 and sex=1  and rheum=0  and age_gg = 2 then a2_b=0; 
run;

data y15; 
set y15; 
if subject=1 and sex=1  and rheum=1 and age_gg = 3 then a3_b=1; 
else if subject=1 and sex=1  and rheum=0 and age_gg = 3 then a3_b=0; 
run;

/*RA w/ sex*/
data y15; 
set y15; 
if subject=1 and sex=1  and rheum=1 and sex=1 then m_b=1; 
else if subject=1 and sex=1  and rheum=0 and sex=1 then m_b=0; 
run;

data y15; 
set y15; 
if subject=1 and sex=1  and rheum=1 and sex=2 then w_b=1; 
else if subject=1 and sex=1  and rheum=0 and sex=2  then w_b=0; 
run;

/*RA w/ region*/
data y15; 
set y15;
if subject=1 and sex=1  and rheum=1 and town_t=1 then u_b=1; 
else if subject=1 and sex=1  and rheum=0  and town_t=1 then u_b=0; 
run;

data y15; 
set y15;
if subject=1 and sex=1  and rheum=1 and town_t=2 then r_b=1; 
else if subject=1 and sex=1  and rheum=0  and town_t=2 then r_b=0; 
run;

/*RA w/ education*/
data y15; 
set y15; 
if subject=1 and sex=1  and rheum=1 and grade_1=1 then e1_b=1;
else if subject=1 and sex=1  and rheum=0  and grade_1=1 then e1_b=0; 
run;

data y15; 
set y15; 
if subject=1 and sex=1  and rheum=1 and grade_1=2 then e2_b=1;
else if subject=1 and sex=1  and rheum=0  and grade_1=2 then e2_b=0; 
run;

/*RA w/ y15*/
data y15;
set y15; 
if subject=1 and sex=1  and rheum=1 and ho_incm_2=1 then i1_b=1; 
else if subject=1 and sex=1  and rheum=0  and ho_incm_2=1 then i1_b=0; 
run;

data y15;
set y15; 
if subject=1 and sex=1  and rheum=1 and ho_incm_2=2 then i2_b=1; 
else if subject=1 and sex=1  and rheum=0  and ho_incm_2=2 then i2_b=0; 
run;

/*RA w/ smoking*/
data y15; 
set y15;
if subject=1 and sex=1  and rheum=1 and smoking_2=1 then s1_b=1; 
else if subject=1 and sex=1  and rheum=0 and smoking_2=1 then s1_b=0;
run;

data y15; 
set y15;
if subject=1 and sex=1  and rheum=1 and smoking_2=2 then s2_b=1; 
else if subject=1 and sex=1  and rheum=0 and smoking_2=2 then s2_b=0;
run;

/*RA w/ bmi*/
data y15; 
set y15;
if subject=1 and sex=1  and rheum=1 and bmi_2=1 then b1_b=1; 
else if subject=1 and sex=1  and rheum=0 and bmi_2=1 then b1_b=0;
run;

data y15; 
set y15;
if subject=1 and sex=1  and rheum=1 and bmi_2=2 then b2_b=1; 
else if subject=1 and sex=1  and rheum=0 and bmi_2=2 then b2_b=0;
run;


/*Table 2 total prevalence*/
proc sort data=y15;
by period;
run;

proc surveyfreq data=y15 nomcar;
strata kstrata;
cluster psu;
weight wt_ind;
by period;
table 
both
a1_b
a2_b
a3_b
m_b
w_b
u_b
r_b
e1_b
e2_b
i1_b
i2_b
s1_b 
s2_b 
b1_b
b2_b
/cl row column;
run;


/*female*/
/*RA prevalence*/
data y16; 
set y14; 
if subject=1 and sex=2  and rheum=1 then both=1;
else if subject=1 and sex=2  and rheum=0 then both=0; 
run;

/*RA w/ age_g*/
data y16; 
set y16; 
if subject=1 and sex=2  and rheum=1 and age_gg = 1 then a1_b=1; 
else if subject=1 and sex=2  and rheum=0  and age_gg = 1 then a1_b=0; 
run;

data y16; 
set y16; 
if subject=1 and sex=2  and rheum=1 and age_gg = 2 then a2_b=1; 
else if subject=1 and sex=2  and rheum=0  and age_gg = 2 then a2_b=0; 
run;

data y16; 
set y16; 
if subject=1 and sex=2  and rheum=1 and age_gg = 3 then a3_b=1; 
else if subject=1 and sex=2  and rheum=0 and age_gg = 3 then a3_b=0; 
run;

/*RA w/ sex*/
data y16; 
set y16; 
if subject=1 and sex=2  and rheum=1 and sex=1 then m_b=1; 
else if subject=1 and sex=2  and rheum=0 and sex=1 then m_b=0; 
run;

data y16; 
set y16; 
if subject=1 and sex=2  and rheum=1 and sex=2 then w_b=1; 
else if subject=1 and sex=2  and rheum=0 and sex=2  then w_b=0; 
run;

/*RA w/ region*/
data y16; 
set y16;
if subject=1 and sex=2  and rheum=1 and town_t=1 then u_b=1; 
else if subject=1 and sex=2  and rheum=0  and town_t=1 then u_b=0; 
run;

data y16; 
set y16;
if subject=1 and sex=2  and rheum=1 and town_t=2 then r_b=1; 
else if subject=1 and sex=2  and rheum=0  and town_t=2 then r_b=0; 
run;

/*RA w/ education*/
data y16; 
set y16; 
if subject=1 and sex=2  and rheum=1 and grade_1=1 then e1_b=1;
else if subject=1 and sex=2  and rheum=0  and grade_1=1 then e1_b=0; 
run;

data y16; 
set y16; 
if subject=1 and sex=2  and rheum=1 and grade_1=2 then e2_b=1;
else if subject=1 and sex=2  and rheum=0  and grade_1=2 then e2_b=0; 
run;

/*RA w/ ho_incm*/
data y16;
set y16; 
if subject=1 and sex=2  and rheum=1 and ho_incm_2=1 then i1_b=1; 
else if subject=1 and sex=2  and rheum=0  and ho_incm_2=1 then i1_b=0; 
run;

data y16;
set y16; 
if subject=1 and sex=2  and rheum=1 and ho_incm_2=2 then i2_b=1; 
else if subject=1 and sex=2  and rheum=0  and ho_incm_2=2 then i2_b=0; 
run;

/*RA w/ smoking*/
data y16; 
set y16;
if subject=1 and sex=2  and rheum=1 and smoking_2=1 then s1_b=1; 
else if subject=1 and sex=2  and rheum=0 and smoking_2=1 then s1_b=0;
run;

data y16; 
set y16;
if subject=1 and sex=2  and rheum=1 and smoking_2=2 then s2_b=1; 
else if subject=1 and sex=2  and rheum=0 and smoking_2=2 then s2_b=0;
run;

/*RA w/ bmi*/
data y16; 
set y16;
if subject=1 and sex=2  and rheum=1 and bmi_2=1 then b1_b=1; 
else if subject=1 and sex=2  and rheum=0 and bmi_2=1 then b1_b=0;
run;

data y16; 
set y16;
if subject=1 and sex=2  and rheum=1 and bmi_2=2 then b2_b=1; 
else if subject=1 and sex=2  and rheum=0 and bmi_2=2 then b2_b=0;
run;


/*Table 2 total prevalence*/
proc sort data=y16;
by period;
run;

proc surveyfreq data=y16 nomcar;
strata kstrata;
cluster psu;
weight wt_ind;
by period;
table 
both
a1_b
a2_b
a3_b
m_b
w_b
u_b
r_b
e1_b
e2_b
i1_b
i2_b
s1_b 
s2_b 
b1_b
b2_b
/cl row column;
run;


/*both*/
/*RA prevalence*/
data y17; 
set y14; 
if subject=1 and rheum=1 then both=1;
else if subject=1 and rheum=0 then both=0; 
run;

/*RA w/ age_g*/
data y17; 
set y17; 
if subject=1 and rheum=1 and age_gg = 1 then a1_b=1; 
else if subject=1 and rheum=0  and age_gg = 1 then a1_b=0; 
run;

data y17; 
set y17; 
if subject=1 and rheum=1 and age_gg = 2 then a2_b=1; 
else if subject=1 and rheum=0  and age_gg = 2 then a2_b=0; 
run;

data y17; 
set y17; 
if subject=1 and rheum=1 and age_gg = 3 then a3_b=1; 
else if subject=1 and rheum=0 and age_gg = 3 then a3_b=0; 
run;

/*RA w/ sex*/
data y17; 
set y17; 
if subject=1 and rheum=1 and sex=1 then m_b=1; 
else if subject=1 and rheum=0 and sex=1 then m_b=0; 
run;

data y17; 
set y17; 
if subject=1 and rheum=1 and sex=2 then w_b=1; 
else if subject=1 and rheum=0 and sex=2  then w_b=0; 
run;

/*RA w/ region*/
data y17; 
set y17;
if subject=1 and rheum=1 and town_t=1 then u_b=1; 
else if subject=1 and rheum=0  and town_t=1 then u_b=0; 
run;

data y17; 
set y17;
if subject=1 and rheum=1 and town_t=2 then r_b=1; 
else if subject=1 and rheum=0  and town_t=2 then r_b=0; 
run;

/*RA w/ education*/
data y17; 
set y17; 
if subject=1 and rheum=1 and grade_1=1 then e1_b=1;
else if subject=1 and rheum=0  and grade_1=1 then e1_b=0; 
run;

data y17; 
set y17; 
if subject=1 and rheum=1 and grade_1=2 then e2_b=1;
else if subject=1 and rheum=0  and grade_1=2 then e2_b=0; 
run;

/*RA w/ ho_incm*/
data y17;
set y17; 
if subject=1 and rheum=1 and ho_incm_2=1 then i1_b=1; 
else if subject=1 and rheum=0  and ho_incm_2=1 then i1_b=0; 
run;

data y17;
set y17; 
if subject=1  and rheum=1 and ho_incm_2=2 then i2_b=1; 
else if subject=1 and rheum=0  and ho_incm_2=2 then i2_b=0; 
run;

/*RA w/ smoking*/
data y17; 
set y17;
if subject=1 and rheum=1 and smoking_2=1 then s1_b=1; 
else if subject=1 and rheum=0 and smoking_2=1 then s1_b=0;
run;

data y17; 
set y17;
if subject=1 and rheum=1 and smoking_2=2 then s2_b=1; 
else if subject=1 and rheum=0 and smoking_2=2 then s2_b=0;
run;

/*RA w/ bmi*/
data y17; 
set y17;
if subject=1 and rheum=1 and bmi_2=1 then b1_b=1; 
else if subject=1 and rheum=0 and bmi_2=1 then b1_b=0;
run;

data y17; 
set y17;
if subject=1 and rheum=1 and bmi_2=2 then b2_b=1; 
else if subject=1 and rheum=0 and bmi_2=2 then b2_b=0;
run;


/*Table 2 total prevalence*/
proc sort data=y17;
by period;
run;

proc surveyfreq data=y17 nomcar;
strata kstrata;
cluster psu;
weight wt_ind;
by period;
table 
both
a1_b
a2_b
a3_b
m_b
w_b
u_b
r_b
e1_b
e2_b
i1_b
i2_b
s1_b 
s2_b 
b1_b
b2_b
/cl row column;
run;
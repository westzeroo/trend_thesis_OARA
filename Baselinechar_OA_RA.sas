/*Table1*/
/*arrangement by subject*/
proc sort data=y7;
by subject;
run;

/*Table1 detailed weighted(period)*/
proc surveyfreq data=y7 nomcar;
strata kstrata;
cluster psu;
weight  wt_total;
by subject;
table
period*age_g
period*sex
period*town_t
period*bmi
period*grade
period*ho_incm
period*smoking / cl row column;
run;

/*Table1 weighted(nonperiod, direct total)*/
proc surveyfreq data=y7 nomcar;
strata kstrata;
cluster psu;
weight  wt_total;
by subject;
table                         
period
age_g
sex
town_t
bmi
grade
ho_incm
smoking / cl row column;
run;

/*Table1 detail crude*/
proc sort data=y7;
by subject;
run;

proc surveyfreq data=y7 nomcar;
by subject;
table
period*age_g
period*sex
period*town_t
period*bmi
period*grade
period*ho_incm
period*smoking / cl row column;
run;

/*Table1 crude total*/
proc surveyfreq data=y7 nomcar;
by subject;
table
period
age_g
sex
town_t
bmi
grade
ho_incm
smoking / cl row column;
run;
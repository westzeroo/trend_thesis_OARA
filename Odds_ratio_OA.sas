/*Table3*/
/*Odds ratio*/

/*male*/
/*period setting*/
data c1 c2 c3 c4 c5 c6 c7;
set y15;
if period in (1 2) then output c1;
if period in (2 3) then output c2;
if period in (3 4) then output c3;
if period in (4 5) then output c4;
if period in (5 6) then output c5;
if period in (6 7) then output c6; 
run;

/*period c1*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c1 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='1') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);
/*period c2*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c2 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='2') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);
/*period c3*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c3 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='3') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);
/*period c4*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c4 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='4') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);
/*period c5*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c5 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='5') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);
/*period c6*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c6 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='6') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);


/*female*/
/*period setting*/
data c1 c2 c3 c4 c5 c6 c7;
set y16;
if period in (1 2) then output c1;
if period in (2 3) then output c2;
if period in (3 4) then output c3;
if period in (4 5) then output c4;
if period in (5 6) then output c5;
if period in (6 7) then output c6; 
run;

/*period c1*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c1 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='1') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);
/*period c2*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c2 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='2') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);
/*period c3*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c3 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='3') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);
/*period c4*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c4 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='4') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);
/*period c5*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c5 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='5') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);
/*period c6*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c6 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='6') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);

/*both*/
/*period setting*/
data c1 c2 c3 c4 c5 c6 c7;
set y17;
if period in (1 2) then output c1;
if period in (2 3) then output c2;
if period in (3 4) then output c3;
if period in (4 5) then output c4;
if period in (5 6) then output c5;
if period in (6 7) then output c6; 
run;

/*period c1*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c1 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='1') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(m_b);
%logistic_model(w_b);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);
/*period c2*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c2 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='2') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(m_b);
%logistic_model(w_b);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);
/*period c3*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c3 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='3') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(m_b);
%logistic_model(w_b);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);
/*period c4*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c4 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='4') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(m_b);
%logistic_model(w_b);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);
/*period c5*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c5 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='5') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(m_b);
%logistic_model(w_b);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);
/*period c6*/
%macro logistic_model(model_name);
PROC SURVEYLOGISTIC DATA=c6 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
CLASS period (ref='6') / param=ref;
MODEL &model_name (event='1') = period;
RUN;
%mend;

%logistic_model(both);
%logistic_model(m_b);
%logistic_model(w_b);
%logistic_model(a1_b);
%logistic_model(a2_b);
%logistic_model(a3_b);
%logistic_model(u_b);
%logistic_model(r_b);
%logistic_model(e1_b);
%logistic_model(e2_b);
%logistic_model(i1_b);
%logistic_model(i2_b);
%logistic_model(s1_b);
%logistic_model(s2_b);
%logistic_model(b1_b);
%logistic_model(b2_b);

/*Table 2 sub*/
/*B-value*/
/*Male*/
data y25;
set y15;
period_2=input(period, 4.); 
run;

data before_pan19 during_pan19;
set y25;
if period_2 in (1 2 3 4 5) then output before_pan19;
if period_2 in (5 6 7) then output during_pan19;
run;

/*before pan*/
%macro surveyreg_model(model_name);
PROC SURVEYreg DATA=before_pan19 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
MODEL &model_name = period_2 / stb clparm;
RUN;
ods graphics off;
%mend;

%surveyreg_model(both);
%surveyreg_model(a1_b);
%surveyreg_model(a2_b);
%surveyreg_model(a3_b);
%surveyreg_model(u_b);
%surveyreg_model(r_b);
%surveyreg_model(e1_b);
%surveyreg_model(e2_b);
%surveyreg_model(i1_b);
%surveyreg_model(i2_b);
%surveyreg_model(s1_b);
%surveyreg_model(s2_b);
%surveyreg_model(b1_b);
%surveyreg_model(b2_b);

/*during pan*/
%macro surveyreg_model(model_name);
PROC SURVEYreg DATA=during_pan19 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
MODEL &model_name = period_2 / stb clparm;
RUN;
ods graphics off;
%mend;

%surveyreg_model(both);
%surveyreg_model(a1_b);
%surveyreg_model(a2_b);
%surveyreg_model(a3_b);
%surveyreg_model(u_b);
%surveyreg_model(r_b);
%surveyreg_model(e1_b);
%surveyreg_model(e2_b);
%surveyreg_model(i1_b);
%surveyreg_model(i2_b);
%surveyreg_model(s1_b);
%surveyreg_model(s2_b);
%surveyreg_model(b1_b);
%surveyreg_model(b2_b);

/*female*/
data y26;
set y16;
period_2=input(period, 4.); 
run;

data before_pan19 during_pan19;
set y26;
if period_2 in (1 2 3 4 5) then output before_pan19;
if period_2 in (5 6 7) then output during_pan19;
run;

/*before pan*/
%macro surveyreg_model(model_name);
PROC SURVEYreg DATA=before_pan19 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
MODEL &model_name = period_2 / stb clparm;
RUN;
ods graphics off;
%mend;

%surveyreg_model(both);
%surveyreg_model(a1_b);
%surveyreg_model(a2_b);
%surveyreg_model(a3_b);
%surveyreg_model(u_b);
%surveyreg_model(r_b);
%surveyreg_model(e1_b);
%surveyreg_model(e2_b);
%surveyreg_model(i1_b);
%surveyreg_model(i2_b);
%surveyreg_model(s1_b);
%surveyreg_model(s2_b);
%surveyreg_model(b1_b);
%surveyreg_model(b2_b);

/*during pan*/
%macro surveyreg_model(model_name);
PROC SURVEYreg DATA=during_pan19 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
MODEL &model_name = period_2 / stb clparm;
RUN;
ods graphics off;
%mend;

%surveyreg_model(both);
%surveyreg_model(a1_b);
%surveyreg_model(a2_b);
%surveyreg_model(a3_b);
%surveyreg_model(u_b);
%surveyreg_model(r_b);
%surveyreg_model(e1_b);
%surveyreg_model(e2_b);
%surveyreg_model(i1_b);
%surveyreg_model(i2_b);
%surveyreg_model(s1_b);
%surveyreg_model(s2_b);
%surveyreg_model(b1_b);
%surveyreg_model(b2_b);

/*both*/
data y27;
set y17;
period_2=input(period, 4.); 
run;

data before_pan19 during_pan19;
set y27;
if period_2 in (1 2 3 4 5) then output before_pan19;
if period_2 in (5 6 7) then output during_pan19;
run;

/*before pan*/
%macro surveyreg_model(model_name);
PROC SURVEYreg DATA=before_pan19 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
MODEL &model_name = period_2 / stb clparm;
RUN;
ods graphics off;
%mend;

%surveyreg_model(both);
%surveyreg_model(m_b);
%surveyreg_model(w_b);
%surveyreg_model(a1_b);
%surveyreg_model(a2_b);
%surveyreg_model(a3_b);
%surveyreg_model(u_b);
%surveyreg_model(r_b);
%surveyreg_model(e1_b);
%surveyreg_model(e2_b);
%surveyreg_model(i1_b);
%surveyreg_model(i2_b);
%surveyreg_model(s1_b);
%surveyreg_model(s2_b);
%surveyreg_model(b1_b);
%surveyreg_model(b2_b);

/*during pan*/
%macro surveyreg_model(model_name);
PROC SURVEYreg DATA=during_pan19 NOMCAR;
STRATA kstrata;
CLUSTER PSU;
WEIGHT wt_ind;
MODEL &model_name = period_2 / stb clparm;
RUN;
ods graphics off;
%mend;

%surveyreg_model(both);
%surveyreg_model(m_b);
%surveyreg_model(w_b);
%surveyreg_model(a1_b);
%surveyreg_model(a2_b);
%surveyreg_model(a3_b);
%surveyreg_model(u_b);
%surveyreg_model(r_b);
%surveyreg_model(e1_b);
%surveyreg_model(e2_b);
%surveyreg_model(i1_b);
%surveyreg_model(i2_b);
%surveyreg_model(s1_b);
%surveyreg_model(s2_b);
%surveyreg_model(b1_b);
%surveyreg_model(b2_b);
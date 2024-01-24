/*RA risk factor*/
/*both*/
data y37;
set y27;
run;

/*duplication*/ 
data y37;
set y37;
period_2=input(period, 4.); 
run;

data bf_risk dur_risk;
set y37;
if period_2 in (1 2 3 4 5) then output bf_risk;
if period_2 in (5 6 7) then output dur_risk;
run;

/*overall*/
%macro risk_factor(ref_value, class_variable);

PROC SURVEYLogistic data=y37 nomcar;
strata kstrata;
cluster psu;
weight wt_total;
class &class_variable (ref=&ref_value) / param=ref;
model rheum (event='1')=&class_variable;

run;
%mend;

%risk_factor('1', age_gg)
%risk_factor('2', age_gg)
%risk_factor('3', age_gg)
%risk_factor('1', sex)
%risk_factor('2', sex)
%risk_factor('1', town_t)
%risk_factor('2', town_t)
%risk_factor('1', bmi_2)
%risk_factor('2', bmi_2)
%risk_factor('1', grade_1)
%risk_factor('2', grade_1)
%risk_factor('1', ho_incm_2)
%risk_factor('2', ho_incm_2)
%risk_factor('1', smoking_2)
%risk_factor('2', smoking_2)

/*before pan*/
%macro risk_factor(ref_value, class_variable);

PROC SURVEYLogistic data=bf_risk nomcar;
strata kstrata;
cluster psu;
weight wt_total;
class &class_variable (ref=&ref_value) / param=ref;
model rheum (event='1')=&class_variable;

run;
%mend;

%risk_factor('1', age_gg)
%risk_factor('2', age_gg)
%risk_factor('3', age_gg)
%risk_factor('1', sex)
%risk_factor('2', sex)
%risk_factor('1', town_t)
%risk_factor('2', town_t)
%risk_factor('1', bmi_2)
%risk_factor('2', bmi_2)
%risk_factor('1', grade_1)
%risk_factor('2', grade_1)
%risk_factor('1', ho_incm_2)
%risk_factor('2', ho_incm_2)
%risk_factor('1', smoking_2)
%risk_factor('2', smoking_2)

/*during pan*/
%macro risk_factor(ref_value, class_variable);

PROC SURVEYLogistic data=dur_risk nomcar;
strata kstrata;
cluster psu;
weight wt_total;
class &class_variable (ref=&ref_value) / param=ref;
model rheum (event='1')=&class_variable;

run;
%mend;

%risk_factor('1', age_gg)
%risk_factor('2', age_gg)
%risk_factor('3', age_gg)
%risk_factor('1', sex)
%risk_factor('2', sex)
%risk_factor('1', town_t)
%risk_factor('2', town_t)
%risk_factor('1', bmi_2)
%risk_factor('2', bmi_2)
%risk_factor('1', grade_1)
%risk_factor('2', grade_1)
%risk_factor('1', ho_incm_2)
%risk_factor('2', ho_incm_2)
%risk_factor('1', smoking_2)
%risk_factor('2', smoking_2)

/*male*/
data y35;
set y25;
where sex=1;
run;

/*duplication*/ 
data y35;
set y35;
period_2=input(period, 4.); 
run;

data bf_risk dur_risk;
set y35;
if period_2 in (1 2 3 4 5) then output bf_risk;
if period_2 in (5 6 7) then output dur_risk;
run;

/*overall*/
%macro risk_factor(ref_value, class_variable);

PROC SURVEYLogistic data=y35 nomcar;
strata kstrata;
cluster psu;
weight wt_total;
class &class_variable (ref=&ref_value) / param=ref;
model rheum (event='1')=&class_variable;

run;
%mend;

%risk_factor('1', age_gg)
%risk_factor('2', age_gg)
%risk_factor('3', age_gg)
%risk_factor('1', town_t)
%risk_factor('2', town_t)
%risk_factor('1', bmi_2)
%risk_factor('2', bmi_2)
%risk_factor('1', grade_1)
%risk_factor('2', grade_1)
%risk_factor('1', ho_incm_2)
%risk_factor('2', ho_incm_2)
%risk_factor('1', smoking_2)
%risk_factor('2', smoking_2)
run;

/*before pan*/
%macro risk_factor(ref_value, class_variable);

PROC SURVEYLogistic data=bf_risk nomcar;
strata kstrata;
cluster psu;
weight wt_total;
class &class_variable (ref=&ref_value) / param=ref;
model rheum (event='1')=&class_variable;

run;
%mend;

%risk_factor('1', age_gg)
%risk_factor('2', age_gg)
%risk_factor('3', age_gg)
%risk_factor('1', town_t)
%risk_factor('2', town_t)
%risk_factor('1', bmi_2)
%risk_factor('2', bmi_2)
%risk_factor('1', grade_1)
%risk_factor('2', grade_1)
%risk_factor('1', ho_incm_2)
%risk_factor('2', ho_incm_2)
%risk_factor('1', smoking_2)
%risk_factor('2', smoking_2)

/*during pan*/
%macro risk_factor(ref_value, class_variable);

PROC SURVEYLogistic data=dur_risk nomcar;
strata kstrata;
cluster psu;
weight wt_total;
class &class_variable (ref=&ref_value) / param=ref;
model rheum (event='1')=&class_variable;

run;
%mend;

%risk_factor('1', age_gg)
%risk_factor('2', age_gg)
%risk_factor('3', age_gg)
%risk_factor('1', town_t)
%risk_factor('2', town_t)
%risk_factor('1', bmi_2)
%risk_factor('2', bmi_2)
%risk_factor('1', grade_1)
%risk_factor('2', grade_1)
%risk_factor('1', ho_incm_2)
%risk_factor('2', ho_incm_2)
%risk_factor('1', smoking_2)
%risk_factor('2', smoking_2)

/*female*/
data y36;
set y26;
where sex=2;
run;

/*duplication*/ 
data y36;
set y36;
period_2=input(period, 4.); 
run;

data bf_risk dur_risk;
set y36;
if period_2 in (1 2 3 4 5) then output bf_risk;
if period_2 in (5 6 7) then output dur_risk;
run;

/*overall*/
%macro risk_factor(ref_value, class_variable);

PROC SURVEYLogistic data=y36 nomcar;
strata kstrata;
cluster psu;
weight wt_total;
class &class_variable (ref=&ref_value) / param=ref;
model rheum (event='1')=&class_variable;

run;
%mend;

%risk_factor('1', age_gg)
%risk_factor('2', age_gg)
%risk_factor('3', age_gg)
%risk_factor('1', town_t)
%risk_factor('2', town_t)
%risk_factor('1', bmi_2)
%risk_factor('2', bmi_2)
%risk_factor('1', grade_1)
%risk_factor('2', grade_1)
%risk_factor('1', ho_incm_2)
%risk_factor('2', ho_incm_2)
%risk_factor('1', smoking_2)
%risk_factor('2', smoking_2)
run;

/*before pan*/
%macro risk_factor(ref_value, class_variable);

PROC SURVEYLogistic data=bf_risk nomcar;
strata kstrata;
cluster psu;
weight wt_total;
class &class_variable (ref=&ref_value) / param=ref;
model rheum (event='1')=&class_variable;

run;
%mend;

%risk_factor('1', age_gg)
%risk_factor('2', age_gg)
%risk_factor('3', age_gg)
%risk_factor('1', town_t)
%risk_factor('2', town_t)
%risk_factor('1', bmi_2)
%risk_factor('2', bmi_2)
%risk_factor('1', grade_1)
%risk_factor('2', grade_1)
%risk_factor('1', ho_incm_2)
%risk_factor('2', ho_incm_2)
%risk_factor('1', smoking_2)
%risk_factor('2', smoking_2)

/*during pan*/
%macro risk_factor(ref_value, class_variable);

PROC SURVEYLogistic data=dur_risk nomcar;
strata kstrata;
cluster psu;
weight wt_total;
class &class_variable (ref=&ref_value) / param=ref;
model rheum (event='1')=&class_variable;

run;
%mend;

%risk_factor('1', age_gg)
%risk_factor('2', age_gg)
%risk_factor('3', age_gg)
%risk_factor('1', town_t)
%risk_factor('2', town_t)
%risk_factor('1', bmi_2)
%risk_factor('2', bmi_2)
%risk_factor('1', grade_1)
%risk_factor('2', grade_1)
%risk_factor('1', ho_incm_2)
%risk_factor('2', ho_incm_2)
%risk_factor('1', smoking_2)
%risk_factor('2', smoking_2)
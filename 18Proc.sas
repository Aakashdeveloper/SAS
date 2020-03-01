data test;
file employee "/folders/myfolders/Book2.csv";
proc import datafile=employee dbms=csv out=test1 replace;
getnames=yes;
run;




/*Format Data*/
proc format;
value feedback
0-3 ='fail'
4-6= 'pass'
7-10='Exce'
;
run;
data test2;
set test1;
format Result feedback4.0;
run;
proc print data=test2;
run;

/*Frequency*/
proc freq data = test2;
tables Result /nofreq nocum;
run;

/*Sampling*/
proc Surveyselect
data = test2
method=srs
sampsize=10
reps=1
out=test3;a
run;
proc print data=test3;
run;
proc freq data = test3;
tables Result /nofreq nocum;
run;

/*Mean*/
proc means data=test2;
var Result;
run;

/*Sort*/
data sort1;
set test3;
proc sort data=sort1;
by Hindi descending English;
run;

proc print data=sort1;
run;

/*Proc Univariate*/
proc univariate data=test2;
var Hindi English;
run;

proc univariate data=test2 normal plot;
var Hindi English;
run;


proc corr data=test2;
var Hindi English;
run;

proc rank data=test2 out=rank1 group=4;
var Result;
ranks q_rank;
run;
proc print data=sort2;
proc print data=rank1;
run;


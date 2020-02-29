data test;
filename employee "/folders/myfolders/Book2.csv";
proc import datafile=employee dbms=csv  out=test1 replace;
getnames=yes;
run;

*Format Data;
proc format;
value feedback 
0 ='poor' 
1-10='good';
run;
data test2;
set test1;
format Ressult feedback4.;
run;
proc print data=test2;
run;

/*Frequency for all rows*/
proc Freq;
data test2;
/*table Ressult s;*/
run;

proc Freq data = test2;
tables Hindi;
run;

proc Freq data = test2;
tables Hindi / nofreq nocum noprint;
run;

/*Sampling(Probabilty)*/
proc Surveyselect 
data= test2
method=srs
sampsize=10
reps=1
out=test3;
run;
proc print data=test3;
run;

proc Freq data = test3;
tables Hindi;
run;

/*Proc Mean*/
proc print data=test3;
run;
proc means data=test3;
var Ressult;
run;










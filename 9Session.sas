data students;
infile '/folders/myfolders/Book1.csv' dlm=',' ;
input Name$ Class Hindi English;
*input v1 v2 v3 v4;
run;
proc print data=students;
run;

data mystudents;
filename marks '/folders/myfolders/Book1.csv';
input Name$ Class Hindi English;
run;


proc import datafile=marks dbms=csv out=edumarks replace;
run;

proc print data="WORK.edumarks";
run;


data test1;
infile '/folders/myfolders/Book1.csv' dlm=',';
input Name$ Class Hindi English;
run;

/*Keep*/
data test2;
set test1 
Keep Hindi English;
proc print data=test1;
run;


data test1;
infile '/folders/myfolders/Book1.csv' dlm=',';
input Name$ Class Hindi English;
run;
proc print test1;
run;

/* labelling*/
data test2;
set test1;
label name="name of the students";
*proc print data=test2;
proc contents data=test2;
run;


/* Rename*/
data test2;
set test1 (rename=(name=s_name));
proc print data=test2;
run;


/* drop  only numeric*/
data test2;
set test1;
drop _numeric_;
proc print data=test2;
run;



/* drop  only characte*/
data test2;
set test1;
drop _character_;
proc print data=test2;
run;

data test2;
set test1;
drop class;
proc print data=test2;
run;

/*import data sets . */
data test5
filename employee "/folders/myfolders/Book2.csv";
input Name$ Class Hindi English;
proc import datafile=employee dbms=csv out=empscore replace;
getnames=yes;
run;

proc print data=WORK.empscore;
run;

/* If Else*/

data test4;
set WORK.empscore;
if Hindi>50 then Hindi = Hindi - 10;
else Hindi = Hindi;
Keep Hindi English;
run;

data test1;
input x;
cards;
1
2
3
4
5
6
7
;
run;

data test2;
set test1;
if x>2 AND x<4 then y="good    ";
else if x>5 then y="very good";
else y="bad";
run;

/*Logical*/
data xyz;
input x;
datalines;
1
2
3
;
run;
data xyz1;
set xyz;
y=x+1;
run;
proc print data=xyz1;
run;

/**/




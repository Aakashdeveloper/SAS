Data test;
informat DOB date9. currecy dollar2.;
*format DOB ddmmyy10.;
format DOB ddmmyy10. currecy dollar7.;
input DOB  currecy;
datalines;
20feb1960 $1000
;
run;
proc print data=test;
run;

Data test;
informat TOB time8.;
format TOB time5.;
input TOB ;
datalines;
00:10:00
;
run;
proc print data=test;
run;


Data test;
format sal nlmnleur15.2;
input sal ;
datalines;
2000
;
run;
proc print data=test;
run;

Data test;
informat cpg percent.;
format cpg percent.;
input cpg ;
cards;
20%
;
run;
proc print data=test;
run;

/*Not Working*/
options yearcutoff=2011;
Data test;
informat DOB date9.;
*format DOB date9.;
input DOB ;
datalines;
14feb2020
;
run;
proc print data=test;
run;

/*DateTime*/
Data test;
*informat DOB date9.;
format DTOB Datetime20.0;
input DTOB ;
datalines;
-1
;
run;
proc print data=test;
run;

/*Juliandate*/
Data test;
informat DOB julian5.;
format DOB date9.0;
input DOB ;
datalines;
17177
;
run;
proc print data=test;
run;


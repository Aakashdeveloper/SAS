Data test;
infile '/folders/myfolders/Book1.csv' dlm=",";
input Name$ Class$ Hindi$ English$;
run;
set test(Keep=Name Class);
proc print data=test;
run;


Data test1;
filename marks
/*infile '/folders/myfolders/Book1.csv' dlm=",";*/
'/folders/myfolders/Book1.csv';
run;

proc import datafile=marks dbms=csv out=studmarks replace;
run;

proc print data=WORK.STUDMARKS;
run;


data mymarks;
set WORK.STUDMARKS(Keep=Name Class);
run;
proc print data=mymarks;
run;

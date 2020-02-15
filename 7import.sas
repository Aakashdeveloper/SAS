Data test;
infile '/folders/myfolders/Book1.csv' dlm=",";
input Name$ Class$ Hindi$ English$;
run;
proc print data=test;
run;
data test;
set sashelp.class;
proc corr data=test;
var height weight;
run;


/*NoN Herichical*/
proc fastclus data=test maxc=4 maxiter=50
out=test1;
var height weight;
run;
proc print data=test1;
run;


/*linea regeression*/
proc reg data=test;
model height =weight;
run;
quit;


proc logistic data=test;
model height = weight;
run;
quit;
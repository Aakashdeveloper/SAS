data test;
set sashelp.class;
run;

/*Export to excel*/
ods excel file="/folders/myfolders/test.xlsx";
proc print data=test;
run;
ods excel close;

proc optmodel ;
var height weight;
min bmi = height*15+weight*10;
con 1 = weight^2/height;
solve;
print height weight;
quit;
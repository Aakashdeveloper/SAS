/*Loops

Do
DoWhile
DoUntil
*/

data test;
input x y z;
cards;
1 2 3
4 5 6
7 8 9
10 11 12
;
run;

data test1;
set test;
if x>5 then z= z+1;
else z=z;
run;
proc print data=test1;
run;

/* DO
statment or task
end;
*/
data test3;
set test;
do;
a=2*x;
end;
*else a=x;
proc print data=test3;
run;


data test3;
set test;
if x>5 then do;
a=2*x;
end;
*else a=x;
proc print data=test3;
run;

/* With SASHELP.class*/
data test4;
set  SASHELP.class;
if age>14 then do;
a = height**2;
end;
else a =height;
run;
proc print data=test4;
run;



/*Loops

Do
DoWhile
DoUntil
1. start to stop
2 By Statement
3 While Statement
4 Until statement
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

/******/
data test5;
input x;
finish = 10;
do i=1 to finish by 2;
y = x*5;
output;
end;
cards;
1
5
6
7
8
;
run;
proc print data=test5;
run;

data test5;
finish = 10;
do i=1 to finish by 2;
i=i+1
y = i;
end;
run;
proc print data=test5;
run;


/***Do while****/
/* do while(condition while it is true)
statement/ task
end
*/
data test6;
x=60;
do while(x>100);
x+50;
end;
run;
proc print data=test6;
run;


data test6;
x=10;
do until (x>=100);
x+50;
end;
run;
proc print data=test6;
run;



data test5;
finish = 10;
do i=1 to finish;
i=i+1;
output;
end;
run;
proc print data=test5;
run;












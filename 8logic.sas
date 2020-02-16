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
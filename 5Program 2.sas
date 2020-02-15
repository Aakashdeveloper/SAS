Data New;
input city$ Salary;
cards;
London 20000
Delhi  10000
;
run;

proc print data=New;
where City='Delhi';
run;
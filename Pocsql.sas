data test;
set sashelp.class;
run;

proc sql;
select test.weight, test.height from test;
quit;

/**/
proc sql;
select weight,height, 
weight+10*height as cum_wt from test;
quit;


/*Where*/
proc sql;
select weight, height from test where weight>100;
quit;


/*Sorting*/
proc sql;
select weight, height from test where weight>100
order by height;
quit;

proc sql;
select weight, height from test where weight>100
order by height desc, weight;
quit;


/*Case*/
proc sql;
select weight, height,
case
when weight>100 then "high"
when weight<100 then "low"
end
as wt_class
from test
;
quit;



/*Creating table in sql*/
proc sql;
create table class1 as
select weight, height, name 
from test
;
quit;



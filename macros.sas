%macro data;
data test;
set sashelp.class;
proc print data=test;
run;
%mend;

%data


%macro add_pref;
prefix= 'ST';
name = catx('_',prefix,name);
run;
%mend;

data test;
set sashelp.class;

%add_pref;
proc print data=test (drop=prefix);
run;


%macro corr(dataset_name,var1,var2);
proc corr data=&dataset_name;
var &var1 &var2;
run;
%mend;

%corr(sashelp.class,height,weight)


%let mvar = bmi;
data test;
set sashelp.class;

&mvar = height+weight;
proc print data=test;
run;


data test;
array cars_arr(4) EngineSize Cylinders Horsepower cost;
set sashelp.cars;

if cars_arr(3)>150 then cars_arr(4)=10*cars_arr(1)+cars_arr(2);
run;
proc print data=test;
run;













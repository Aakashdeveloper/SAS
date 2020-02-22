/*
create 2 datasets for an employee with 1 dataset having name and experience and other one having name and 
technology only 4 employee records
name
John
Ammy
Gabril
Jackson

exp
2
4
6


technology
JavaScript

SAS
ML
*/

data employee;
input name$ experience;
cards;
Ammy 2
Gabriel 6
John 4
;
run;

data technology;
input name$ technology$;
cards;
Ammy SAS
Gabriel ML
Jackson JavaScript
;
run;

data output;
merge employee technology;
by name;
run;


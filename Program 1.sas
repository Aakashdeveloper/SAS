data instream_mtcars;
input cars$ mpg cyl disp hp drat;
cards; /*cards user to insert instream data*/
Mercedes_AMG 21 6 160 110 3.9
BMW_X1_AUTO 22.8 4 108 93 3.85
;
run;
proc print data=instream_mtcars;
run;
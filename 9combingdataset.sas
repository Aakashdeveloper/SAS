/*combining data sets
1 one to one
2 concatenate
3 interleaving
4 merging

*/

data test1;
input x y;
cards;
1 2
3 4
5 6
;
run;

data test2;
input a b;
cards;
12 13
14 15
16 17
18 19
;
run;

/*1 one to one*/
data test3;
set test1;
set test2;
run;

data test4;
input a b4
cards;
10 20
30 40
50 60
70 80
;
run;


/*2 concatenate*/
data test5;
set test1 test2 test4;
run;

/*3 interleaving (sort by a or b)*/
data test6;
set test4 test2;
by a;
run;


/*3 merge (sort by a or b)*/
data test7;
set test2 test4;
by a;
run;


data test8;
input num v1$;
cards;
1 a1
2 a2
3 a3
4 a4
;
run;


data test9;
input num v2$;
cards;
1 b1
2 b2
3 a3
4 b4
;
run;

data test10;
merge test8 test9;
by num;
run;







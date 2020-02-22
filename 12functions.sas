/* SAS Functiions 

Numeric Function
1. SUM- to sum given values or variable
2. Min- find the min value
3. Max- Find Max value
4. Std.- Std deviation of given variable
5. N- no of non-missing obs

Character function
1) Substr
2) Scan
3) INDEX
4) find
5) Catx
6) cat

Date-time function
1) mDY
2) Intck
3) Intnx
4) Today
5) day
6) month
7) Year
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

data test2;
set test;
a = sum(x,y);
b=min(x,y);
c=max(x,y);
d=std(x,y);
run;

proc print data=test2;
run;


data test3;
x1=2;
x2=4;
y=100;
x3=6;
x4=sum(x1,x2,x3);
x5=sum(of x1-x4);
x6=sum(of x1--y);
run;
proc print data=test3;
run;

/*Character*/
Data chardata;
input nameage $10.;
datalines;
24John
28Ammy
37Jackson
;
run;


data chardata1;
set chardata;
age= substr(nameage,1,2);
name= substr(nameage,3);
run;


data chardata2;
set chardata;
age= reverse(substr(left(reverse(nameage)),1,2));
run;
proc print;
run;

data chardata2;
set chardata;
age= reverse(nameage);
run;
proc print;
run;

/*lowercasee*/
data chardata3;
set chardata;
age= compress(lowcase(nameage));
run;
proc print;
run;

/*compress exxtra space or given value*/
data chardata4;
str = 'Bs@#!Yum';
name = compress(str,'@#!');
run;

proc print;
run;


data chardata5;
input phnum $20.;
cards;
+44 6788 678236
011 +44 784738298
080 76546765 +44
+31 988 76545678
;
run;

proc print;
run;

data chardata6;
set chardata5;
if index(phnum, '+44')>0 then substr(phnum,index(phnum,'+44'),3)= '+91';
run;

proc print;
run;


data chardata7;
input phnum $25.;
datalines;
(+44) 6788 678236
  (+44) 011 784738298
(+44)080   76546765
;
run;

data chardata8;
set chardata7;
ISD= scan(phnum,1);
STD= scan(phnum,2);
PH= scan(phnum,3);
run;
proc print;
run;


data num1;
x= 10.16;
y=int(x);
z=round(x,.1);
run;
proc print;
run;

data t1;
x = "RUSsia AUSTRALIA Usa";
y = index(x, 'US');
y1= find(x, 'US');
run;
proc print;
run;


data t1;
x = "RUSsia AUSTRALIA Usa";
y1= find(x, 'US','i');
run;
proc print;
run;


data test;
x= 'Is';
y= 'it';
z="Monday";
all= x||y||z;
run;
proc print;
run;

data test;
x= 'Is  ';
y= '  it';
z="   Monday";
all= cat(x,y,z);
all1 = trim(left(x))||trim(left(y))||trim(left(z));
all2= cats(x,y,z);
run;
proc print;
run;


/***Date***/
Data test;
x = today();
beg_dt = intnx('Month',today(),1);
format beg_dt x date9.;
run;
proc print;
run;



Data test;
beg_dt = put(intnx('Month',today(),1),date9.0);
run;
proc print;
run;

Data test;
beg_dt = put(intnx('Year','31dec2014'd,1),date9.0);
run;
proc print;
run;



Data test;
beg_dt = put(intck('Year','31dec2014'd,1),date9.0);
run;
proc print;
run;


Data test;
beg_dt = intck('Year','31dec2014'd,'01jan2015'd);
run;
proc print;
run;

Data test;
beg_dt = intck('month','31dec2014'd,'01jan2015'd);
run;
proc print;
run;

Data test;
beg_dt = intck('day','31dec2014'd,'01jan2015'd);
run;
proc print;
run;

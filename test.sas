** This is just a test to see if Atom can recognize **;
** SAS syntax **;

/* A simple comment will do */

proc sort data=sashelp.class out=class1 nodupkey;
  by name;
run;

data class2;
  set class1;
  where sex="M";
run;

proc sql noprint;
  create table stat as
  select distinct sex, count(*) as n
  from class2
  group by sex;
quit;

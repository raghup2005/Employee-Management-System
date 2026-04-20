insert into employes
values(1,"raghu",960,null,"2005-4-12",null),
      (2,"srija",800,null,"2005-5-18",null),
      (3,"sriram",1000,null,"2005-5-19",null),


insert into expenses
values (1,"salaries",(select sum(emp_annual_income) from employes))
       (2,"taxes",null)
       (3,"supplies",null);
       
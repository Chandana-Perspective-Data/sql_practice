use sys;
create  table employees(EMPLOYEE_ID int primary key,
FIRST_NAME varchar(25),
LAST_NAME varchar(25),
EMAIL varchar(25),
PHONE_NUMBER varchar(20),
HIRE_DATE date NOT NULL,
JOB_ID varchar(10),
SALARY int,
 MANAGER_ID int,
  DEPARTMENT_ID int);
  
  create table Departments1(DEPARTMENT_ID int,
DEPARTMENT_NAME varchar(25),
MANAGER_ID int);

insert into employees values

(11,"vamshi","Addakula","vamshi@gmail.com",2345,"2022-09-02","AD_PRESS",20000,111,222),
(12,"siddhu","Addakula","siddhu@gmail.com",1235,"2022-09-03","AD_VP",20000,111,222),
(14,"shirisha","Alikanti","shiri@gmail.com",3456,"2022-09-04","AD_VP",20000,111,222),
(15,"Alivela","sandhyapaga","sandhya@gmail.com",1234,"2022-09-05","IT_PROG",20000,111,222),
(16,"shailaja","Gikki","shailaja@gmail.com",1234,"2022-09-01","PRESS",20000,111,222),
(17,"seetha","Gandam","seetha@gmail.com",5678,"2022-09-08","ACCOUNT",20000,111,222),
(18,"Rani","juttu","rani@gmail.com",6789,"2020-04-07","AC_MGR",30000,112,223),
(19,"MAHI","Errapoya","Mahi@gmail.com",5482,"2021-08-06","AD_PRES",30000,112,223);
select * from employees;

select FIRST_NAME,LAST_NAME,SALARY,SALARY*.15 PF from employees;
select JOB_ID,COUNT(*) from employees group by JOB_ID;

SELECT department_name AS 'Department Name', 
COUNT(*) AS 'No of Employees' 
FROM departments 
INNER JOIN employees 
ON employees.department_id = departments.department_id 
GROUP BY departments.department_id, department_name 
ORDER BY department_name;


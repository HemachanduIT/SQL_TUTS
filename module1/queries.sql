--1.Increment the salary by 500 for the employees whose Comm is NULL
update emp set salary=salary+1000 where comm is null;

--2.Display Empno, Ename for the employees whose name starts with the letter ‘S’
select empno,ename from emp where ename like "S%";

--3.Display names of all the employes whose salary is in the range 5000 to 10000.
select ename,salary from emp where salary>=3000 and salary<=5000;

--4.Retrieve the Distinct salaries of Employees who are working in Deptno:10.
select distinct salary as distinct_salaries from emp where deptno=10;

--5.Count the no. of employees whose salary is NULL
select count(*)  as no_of_emplyoers_with_salarynull from emp where salary is null;

--6.Display department wise average salary in the Company with average salary greater than 2100.
select deptno,avg(salary) as average_salary from emp group by deptno having avg(salary)>2100;

--7.Find the details of employees who are working in the Deptno 10 or 20.
select * from emp where deptno in (10,20);

--8. Display the details of employees who are in Deptno:10 and salary between 2000 and 3000.
select * from emp where deptno=10 and salary between 2000 and 3000;

--9.Find the details of employees whose Salary is Not in 5000.
select * from emp where salary!=5000;

--10.Count the no. of employees in the accounting department.
select count(*) as noofemp_accdept from emp where deptno=(select deptno from dept where dname='ACCOUNTING')

--11.fOR each Job, List the no. of employees in the company.
select job,count(*) as noofemp from emp group by job;

--12.Find out the employees who are getting the salary more than that of 'Smith's salary using sub-query.
select * from emp where salary>(select salary from emp where ename='KING');

--13.Find out the Highest and Lowest salaries of Employees.
select max(salary) as Higest_salary,min(salary) as lowest_salary from emp;

--14.Find the Names and salaries of the employees who are working in 'Research' department.
select ename,salary from emp where deptno=(select deptno from dept where dname='RESEARCH');

--15.Display the Maximum Average salary of all departments.
select max(avg_salary) as max_avg_salary from(select avg(salary) as avg_salary from emp group by deptno) as dept_avg_sal;

--16.Find out the Highest salaried employee details.
select * from emp where salary=(select max(salary) from emp);

--17.Find out the Sum and the average salaries of all the employees.
select sum(salary) as total_salary, avg(salary) as avg_salary from emp;

--18.Find the details of employees whose Job is in Manager or Clerk.
select * from emp where job='MANAGER' OR job='CLERK';

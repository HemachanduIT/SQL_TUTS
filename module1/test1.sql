-- 1. Create a database named "company" and switch to it.
create database company;
use company;
-- 2. Create a table named "department" with the following columns:
create table dept(
deptno int primary key,
dname varchar(20),
loc varchar(20)
);
---- 2. Create a table named "employee" with the following columns:
create table emp(
empno int primary key,
ename varchar(20),
job varchar(20),
salary decimal(10,2),
mgr int,
comm decimal(10,2),
hiredate date,
deptno int,
foreign key (deptno) references dept(deptno)
);

-- insert values into department table:
INSERT INTO DEPT (DEPTNO, DNAME, LOCATION) 
VALUES 
    (10, 'ACCOUNTING', 'NEW YORK'),
    (20, 'RESEARCH', 'DALLAS'),
    (30, 'SALES', 'CHICAGO'),
    (40, 'OPERATIONS', 'BOSTON');
-- insert values into employee table:
INSERT INTO EMP (EMPNO, ENAME, JOB, SALARY, MGR, COMM, HIREDATE, DEPTNO)
VALUES
    (7839, 'KING', 'PRESIDENT', 5000, NULL, NULL, '1981-11-17', 10),
    (7566, 'JONES', 'MANAGER', 2975, 7839, NULL, '1981-04-02', 20),
    (7698, 'BLAKE', 'MANAGER', 2850, 7839, NULL, '1981-05-01', 30),
    (7782, 'CLARK', 'MANAGER', 2450, 7839, NULL, '1981-06-09', 10),
    (7788, 'SCOTT', 'ANALYST', 3000, 7566, NULL, '1982-12-09', 20),
    (7902, 'FORD', 'ANALYST', 3000, 7566, NULL, '1981-12-03', 20),
    (7844, 'TURNER', 'SALESMAN', 1500, 7698, 0, '1981-09-08', 30),
    (7499, 'ALLEN', 'SALESMAN', 1600, 7698, 300, '1981-02-20', 30),
    (7521, 'WARD', 'SALESMAN', 1250, 7698, 500, '1981-02-22', 30),
    (7934, 'MILLER', 'CLERK', 1300, 7782, NULL, '1982-01-23', 10),
    (7900, 'JAMES', 'CLERK', 950, 7698, NULL, '1981-12-03', 30),
    (7876, 'ADAMS', 'CLERK', 1100, 7788, NULL, '1983-01-12', 20),
    (7654, 'MARTIN', 'SALESMAN', 1250, 7698, 1400, '1981-09-28', 30),
    (7935, 'SMITH', 'CLERK', 800, 7902, NULL, '1980-12-17', 20);

-- displaying tables
select * from dept;
select * from emp;
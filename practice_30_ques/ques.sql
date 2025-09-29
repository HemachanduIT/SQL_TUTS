--1)
select Transaction_id,Amount,Transaction_type from transactions 
where transaction_type='Debit' and Amount>10000 and Amount<5000;
--2)
select c.First_Name,c.Contact,a.Balance from customer c
join account a on c.customer_id=a.customer_id
join account_type att on a.account_type_id=att.account_type_id
where att.account_type_name like 'Sa%' 
order by c.First_Name;
--3)
select e.empid,e.ename,s.basic,p.netpay from emp_info e
join salary_info s on e.emp_cat=s.emp_cat
join payroll p on e.empid=p.empid
s.basic>5000;
--4)
select empid as EmployeeId,empname as EmployeeName from emp_info 
where year_of_exp>5 and joining_date>'2001-01-01';
--5)
select c.courseid,c.name,sd.day,sd.starttime from course c
join section s on c.courseid=s.courseid
join schedule sd on s.scheduleid=sd.scheduleid
where sd.day='wed';
--6)
select title,price,ISBN from books 
where publish_date>'1940-01-01' and categoty='C102';    
--7)
select cate_id,cate_name from categories
where cate_name like 'M%';
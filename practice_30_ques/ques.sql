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
--8)
select td.train_id,td.train_name from train_details_tbl as td
join station_tbl as sd on td.train_to=sd.station_id
where td.train_name like 'M%' and sd.station_name='Pune';
--9)
select empid,leave_type,total_leaves from emp_leave_info
where total_leaves>10 and leave_type='CLI' OR leave_type='ML';
--10)
select e.empid,e.empname,d.dname,s.basic from emp_info e
join dept_info d on e.deptid=d.deptid
join salary_info s on e.emp_cate=s.emp_cate
where d.dname='HR';
---11)
select e.empid,e.empname,d.dname,s.house_rent from emp_info e
join dept_info d on e.deptid=d.deptid
join salary_info s on e.emp_cate=s.emp_cate
where d.location in('BANGLORE','COCHIN');
--12)
select acc_type_id,avg(balance) as Avg_balance from account
group by acc_type_id
having avg(balance)>=50000;
--13)
select c.first_name.c.last_name,a.account_id from customer c
join account a on c.customer_id=a.customer_id
where a.balance>=50000
order by c.first_name;
--14)
select first_name as staff_First_name,position,salary from staff
where salary > 50000;
--15)
select concat(p.first_name,p.last_name) as PatientName ,p.email as PatientEmail ,p.admissiondate as AdmissionDate b.totalmount
from patient p
join billing b on p.patientid=b.patientid
b.paymentstatus='UNpaid'
order by b.totalamount desc;
--16)
select f.flightid,f.departure_time,f.departure_date from flight f
join airplane a on f.airplaneid=a.airplaneid
join airline al on a.airlineid=al.airlineid
where al.name='Singapore Airlines';
--17)
select airplane_id,model_number from airplane
where manufacturer='Airbus';
--18)
select s.last_name from students s
join register r on s.studentid=r.studentid
where r.register_year like '2012%' or
where extract(year from r.register_year)=2012;
--19)
select * from cabincrew c 
join flight f on c.flightid=f.flightid
where c.firstname like 'A%' and f.flightid like '%1';
--20)
select f.flightid,count(b.passengerid) as Total_passengers,sum(b.baggage) as Total_baggage from flight f
join baggage b on f.flightid=b.flightid
where f.flightto='Paris' and f.arrival_date='2024-02-11'
group by f.flightid;
--21)
select count(*) as product_count from product p
join product_cate pc on p.productid=pc.productid
join categoty c on pc.categoryid=c.categoryid
where c.name='Women';   
--22)
select train_name,train_type from train_details_tbl 
where train_speed < 50;
--23)
select p.firstname,p.contact from passenger p
join boarding b on p.passid=b.passid
join flight f on b.flightid=f.flightid
where f.flightfrom='Hong kong' and f.flightid=4 and b.meal='veg';
--24)
select p.productid,p.productname from product p
join orderitem o on p.productid=o.productid
join orderdelivery od on o.ord_deliveryid=od.ord_deliveryid
where od.status='in the transition hub';
--25)
select artist_id,aname from artist
where aname like '%0%' or
aname like '%1%' or
aname like '%2%';

select artist_id,aname from artist
where aname regeexp '[0-9]';

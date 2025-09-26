
--QUESTION 1 FROM ("PRIME CODING")
select * from train_details_tbl as td 
join train_stations_tbl as sd on td.train_to = sd.station_id 
where sd.station_name like '% %';

select * from train_details_tbl as td
join train_stations_tbl as sd on td.train_from = sd.station_id
where sd.station_name like '% %';

--QUESTION 2 FROM ("PRIME CODING")
select distinct(hd.hotel_id),hd.hotel_name,hd.rating from hotel_details as hd
join orders as o on hd.hotel_id=o.hotel_id
where month(o.order_date)=7
order by hd.hotel_id asc;

--QUESTION 3 FROM ("PRIME CODING")
select car_id,car_name,owner_id from cars where car_type='SUV' OR car_type='Hatchback' order by car_id asc

select car_id,car_name,owner_id from cars where car_type in('SUV','Hatchback') order by car_id asc

--QUESTION 4 FROM ("CODE BASHERS")
select c.course_id as Course_ID,c.name as Course_Name,sd.day as Day,sd.startime as Start_Time from sections s
join course c on s.course_id=c.course_id
join schedule sd on s.schedule_id=sd.schedule_id
where sd.day='wed';

--QUESTION 5 FROM ("CODE BASHERS")
select td.train_id,td.train_name from train_details_tbl as td 
join train_station_tbl as sd on td.train_to=sd.station_id
where td.train_name like 'M%' and sd.station_name='PUNE';

--QUESTION 6 FROM ("ONLINE STUDY 4U")
select concat(customer_name,customer_id) as USERNAME,
concat(substring(customer_name,1,3),substring(customer_phone,-4,4)) as PASSWORD
from customers
order by USERNAME;

--QUESTION 7 FROM ("ONLINE STUDY 4U")
select order_date,sum(order_amount) as TOTAL_SALE from orders group by order_date;

--QUESTION 8 FROM ("ONLINE STUDY 4U")
select s.student_name,d.department_name from student as s 
join department d on s.department_id=d.department_id
where s.city='Coimbatore' 
order by s.student_name;


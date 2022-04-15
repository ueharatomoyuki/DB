1
select * from student 
where grade = 1 and hometown = '東京'
order by  student_id ;

2
select * from student
where grade = 1 or student_name like '%本' 
order by student_id desc ;

3
select major_id , max(grade)  from student
group by major_id
order by major_id ;

4
select hometown , count(hometown) from student 
group by hometown
having count(hometown) >= 2 
order by hometown ;

5
select s. student_name , m.major_name
from student s
inner join major m
on s.major_id = m.major_id
order by major_name , student_name;

6
select student_id , s. student_name , hometown , m.major_name
from student s
inner join major m 
on s.major_id = m.major_id
where hometown <> '東京'
order by major_name , student_id;

7
select student_id , student_name , grade
from student
where major_id = (select major_id
                   from major
                   where major_name = '英文学')
order by student_id;

8
select student_id, student_name, major_id
from student s 
where  s.major_id in (select major_id
            from student
            group by major_id
            having count(major_id) >= 3)
order by major_id , student_id 
;            

-- 発展

1
create table sales_old(
    sales_id int primary key 
    , order_data date 
    , customer_id int not null references customer 
    , amount decimal 
) ;

2
insert into sales_old
(sales_id,order_data,customer_id,amount)
values(6,'2018/09/02',2,20000)
     ,(7,'2018/09/01',1,5000)
     ,(8,'2018/09/02',3,6000)
     ,(9,'2018/09/05',1,300);

3
insert into sales
select *
from sales_old ;

4
drop table sales_old ; 

5
select sales_id , order_data ,
     (case when order_data < '2018/10/01' then '〇'
      end ) as is_old
from sales 

order by order_data ;

6
select customer_id ||':' || customer_name customer_id_name
from customer 
order by customer_id;

7
select * from sales 
where customer_id = 1 
order by order_data desc limit 2;

8
(select order_data,sum(amount) 
 from sales
where order_data 
 in (select min(order_data) 
  from sales)
 group by order_data)


9
select s.customer_id ,customer_name , 
       trunc(avg(amount)) avg_amount
from sales s
inner join customer c
on s.customer_id = c.customer_id
group by s.customer_id ,customer_name
order by s.customer_id ; 

10
select sales_id,order_data,customer_id, max(amount) amount
from sales
where order_data between '2018/09/01' and '2018/09/30'
group by sales_id ,order_data,customer_id
order by amount desc limit 1 ;
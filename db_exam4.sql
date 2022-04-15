-- 演習４
1-1
create index idx_name on major(major_name)
1-2
create index idxs_name on student(student_name)
1-3
create index idx_gn on student(grade, student_name) ;

2
create view  v_student as select student_id ,
student_name , hometown , m.major_name
from student s 
join major m  on s.major_id = m.major_id
where student_id  in (1,4,5,7,9,8) ;

3
create materialized view mv_student as
select * from v_student

4
create or replace function f11(amount integer) 
returns integer
language plpgsql
as $function$
declare
begin
return trunc(amount *1.1,0) ;
end ;
$function$

5
create table users
 (id serial primary key,
 name varchar(50))

alter sequence users_id_seq
restart 101

 insert into users
 (name)
 values(ue)


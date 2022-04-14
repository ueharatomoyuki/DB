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
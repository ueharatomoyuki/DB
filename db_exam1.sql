 create database db_exam ;
\c db_exam
create table major(
    major_id int primary key
    , major_name varachar(50)
) ;
create table student(
    student_id int primary key
    ,student_name varachar(50)
    ,grade int 
    ,hometown varachar(50)
    ,major_id int not nullreferences major(major_id)
) ;
insert into major
(major_id,major_name) 
values(1,'英文学')
      ,(2,'応用科学')
      ,(3,'情報工学')
      ,(4,'経済学')
      ,(5,'国際文化')
 ;
insert into student
(student_id,student_name,grade,hometown,major_id)
values(1,'山田',1,'宮城',1),
      (2,'田中',1,'東京',2),
      (3,'佐藤',1,'東京',3),
      (4,'鈴木',2,'鹿児島',1),
      (5,'高橋',2,'北海道',2),
      (6,'吉田',2,'東京',1),
      (7,'伊藤',3,'鹿児島',2),
      (8,'山本',3,'神奈川',3),
      (9,'森本',4,'沖縄',4),
      (10,'吉岡',4,'神奈川',5),
      ;
select * from student where grade = 1 ;
select * from student where hometown = '東京' ;
select major_name from student ;
update student set grade = 3 where student_id = 1 ;
delete from student where student_id = 10 ;
      



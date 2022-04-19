-- Project Name : データベース設計＿演習問題
-- Date/Time    : 2022/04/18 13:02:28
-- Author       : 上原友行
-- RDBMS Type   : Oracle Database
-- Application  : A5:SQL Mk-2

/*
  << 注意！！ >>
  BackupToTempTable, RestoreFromTempTable疑似命令が付加されています。
  これにより、drop table, create table 後もデータが残ります。
  この機能は一時的に $$TableName のような一時テーブルを作成します。
  この機能は A5:SQL Mk-2でのみ有効であることに注意してください。
*/

-- syuppan
--* RestoreFromTempTable
create table NEW_ENTITY3 (
  "出版社id" NUMBER(10)
  , "書籍id" VARCHAR2
  , "出版社名" VARCHAR2
  , constraint NEW_ENTITY3_PKC primary key ("出版社id","書籍id")
) ;

-- tyosya
--* RestoreFromTempTable
create table NEW_ENTITY2 (
  "著者id" NUMBER(10)
  , "書籍id" VARCHAR2
  , "著者名" VARCHAR2
  , constraint NEW_ENTITY2_PKC primary key ("著者id","書籍id")
) ;

-- syoseki
--* RestoreFromTempTable
create table NEW_ENTITY1 (
  "書籍id" VARCHAR2
  , "書籍名" VARCHAR2
  , "定価" NUMBER(10)
  , "発行年月日" DATE
  , "著者id" VARCHAR2
  , "出版社id" VARCHAR2
  , constraint NEW_ENTITY1_PKC primary key ("書籍id")
) ;

comment on table NEW_ENTITY3 is 'syuppan';
comment on column NEW_ENTITY3."出版社id" is 'syu_id';
comment on column NEW_ENTITY3."書籍id" is 's_id';
comment on column NEW_ENTITY3."出版社名" is 'syu_name';

comment on table NEW_ENTITY2 is 'tyosya';
comment on column NEW_ENTITY2."著者id" is 'tyo_id';
comment on column NEW_ENTITY2."書籍id" is 's_id';
comment on column NEW_ENTITY2."著者名" is 'tyo_name';

comment on table NEW_ENTITY1 is 'syoseki';
comment on column NEW_ENTITY1."書籍id" is 's_id';
comment on column NEW_ENTITY1."書籍名" is 's_name';
comment on column NEW_ENTITY1."定価" is 'teika';
comment on column NEW_ENTITY1."発行年月日" is 'date';
comment on column NEW_ENTITY1."著者id" is 'tyo_id';
comment on column NEW_ENTITY1."出版社id" is 'syu_id';

create database ensyu ;

create table syoseki(
s_id int primary key ,
name varchar(50),
teika int ,
b_date date ,
tyo_id int ,
syu_id int )

create table tyosya(
id int primary key ,
name varchar(30) )

create table syu(
id int primary key ,
name varchar(30) )

alter table syoseki
add column tyo_id  foreign key 

create database test_db 

create table personal(
id int primary key ,
name varchar(30) ,
kana varchar(30) ,
mail varchar(50),
department_id int not null  ,
post_id int  ,
company_id int);

create table company (
id int primary key ,
company_name varchar(30),
company_logo varchar(30),
campany_message varchar(30),
job varchar(30) ,
company_qualification varchar(30) ,
company_url varchar(40) ) ;

create table region (
id int primary key ,
company_id int not null ,
region_name varchar(30) ,
region_address varchar(30) ,
region_fax int ,
region_number int ,
region_post_number int) ;

create table department (
id int primary key ,
company_id int not null,
department_id int not null,
department_name varchar(30)) ;

create table post (
post_id int primary key ,
company_id int not null,
department_id int not null,
post varchar(30) ) ;

create table company_qualification (

create table tyo (
tyo_id int primary key ,
name  varchar(20) )

create table syu (
syu_id int primary key ,
name varchar(20) )

create table syo (
id int primary key ,
name varchar(20) ,
teika int ,
b_date date ,
tyo_id int not null references tyo(tyo_id),
syu_id int not null references syu(syu_id))

FOREIGN KEY(列名) REFERENCES 親テーブル名(親列名)

create database tangen ;

create table 

create table shop (
    shop_id int primary key ,
    co_name varchar(30) ,
    so_ame  varchar(30) ,
    adr     varchar(30) ,
    nobr    int
)

select * from shop

create table per (
    per_id int primary key ,
    p_name varchar(20)
)

create table obj (
    obj_id int primary key ,
    obj_name varchar(30),
    tanka   int
)

create table pay(
    pay_id int primary key ,
    how varchar(30)
)

create table resi(
    resi_id int primary key ,
    shop_id int not null references shop(shop_id) ,
    rezi_no int not null ,
    hiduke  date ,
    per_id int not null references per(per_id),
    den_no int ,
    pay_id int not null references pay(pay_id)        
)

create table resi(
    resi_id int primary key ,
    shop_id int not null references shop(shop_id) ,
    rezi_no int not null ,
    hiduke  date ,
    per_id int not null references per(per_id),
    den_no int ,
    pay_id int not null references pay(pay_id)        
)

create table obj_p(
    resi_id int not null references resi(resi_id) ,
    obj_id  int not null references obj(obj_id) ,
    kosu    int ,
    kin     int ,
    wari    int 
)

create table obj_8p(
    resi_id int not null references resi(resi_id) ,
    obj_id  int not null references obj(obj_id) ,
    kosu    int ,
    kin     int ,
    wari    int 
)

create table goukei(
    resi_id int not null references resi(resi_id),
    syou  int ,
    zei   int ,
    gou   int 
)

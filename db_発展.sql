-- Project Name : �f�[�^�x�[�X�݌v�Q���K���
-- Date/Time    : 2022/04/18 13:02:28
-- Author       : �㌴�F�s
-- RDBMS Type   : Oracle Database
-- Application  : A5:SQL Mk-2

/*
  << ���ӁI�I >>
  BackupToTempTable, RestoreFromTempTable�^�����߂��t������Ă��܂��B
  ����ɂ��Adrop table, create table ����f�[�^���c��܂��B
  ���̋@�\�͈ꎞ�I�� $$TableName �̂悤�Ȉꎞ�e�[�u�����쐬���܂��B
  ���̋@�\�� A5:SQL Mk-2�ł̂ݗL���ł��邱�Ƃɒ��ӂ��Ă��������B
*/

-- syuppan
--* RestoreFromTempTable
create table NEW_ENTITY3 (
  "�o�Ŏ�id" NUMBER(10)
  , "����id" VARCHAR2
  , "�o�ŎЖ�" VARCHAR2
  , constraint NEW_ENTITY3_PKC primary key ("�o�Ŏ�id","����id")
) ;

-- tyosya
--* RestoreFromTempTable
create table NEW_ENTITY2 (
  "����id" NUMBER(10)
  , "����id" VARCHAR2
  , "���Җ�" VARCHAR2
  , constraint NEW_ENTITY2_PKC primary key ("����id","����id")
) ;

-- syoseki
--* RestoreFromTempTable
create table NEW_ENTITY1 (
  "����id" VARCHAR2
  , "���Ж�" VARCHAR2
  , "�艿" NUMBER(10)
  , "���s�N����" DATE
  , "����id" VARCHAR2
  , "�o�Ŏ�id" VARCHAR2
  , constraint NEW_ENTITY1_PKC primary key ("����id")
) ;

comment on table NEW_ENTITY3 is 'syuppan';
comment on column NEW_ENTITY3."�o�Ŏ�id" is 'syu_id';
comment on column NEW_ENTITY3."����id" is 's_id';
comment on column NEW_ENTITY3."�o�ŎЖ�" is 'syu_name';

comment on table NEW_ENTITY2 is 'tyosya';
comment on column NEW_ENTITY2."����id" is 'tyo_id';
comment on column NEW_ENTITY2."����id" is 's_id';
comment on column NEW_ENTITY2."���Җ�" is 'tyo_name';

comment on table NEW_ENTITY1 is 'syoseki';
comment on column NEW_ENTITY1."����id" is 's_id';
comment on column NEW_ENTITY1."���Ж�" is 's_name';
comment on column NEW_ENTITY1."�艿" is 'teika';
comment on column NEW_ENTITY1."���s�N����" is 'date';
comment on column NEW_ENTITY1."����id" is 'tyo_id';
comment on column NEW_ENTITY1."�o�Ŏ�id" is 'syu_id';

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

FOREIGN KEY(��) REFERENCES �e�e�[�u����(�e��)

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

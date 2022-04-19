create table shop (
    shop_id int primary key ,
    co_name varchar(30) ,
    so_ame  varchar(30) ,
    adr     varchar(30) ,
    nobr    int
)

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
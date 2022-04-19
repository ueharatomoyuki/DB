insert into shop
(shop_id ,co_name,so_ame,adr,nobr)
values
(1,'LonelyMart','日本橋店','東京都中央区日本橋1-1-1',03-111-2222) ;

insert into obj
(obj_id ,obj_name ,tanka)
values
(1,'いろはす天然水',100,),
(2,'ツナマヨおにぎり',120),
(3,'ファブリーズ',400),
(4,'レジ袋',400) ;

insert into per
(per_id,p_name)
values
(1,'上原')

insert into pay
(pay_id,how)
values
(1,'Pay Pay')

insert into resi
(resi_id, shop_id, rezi_no, hiduke, per_id, den_no
 , pay_id)
values
(1,1,1,'2022/4/1',1,001,1)

insert into obj_p
(resi_id, obj_id, kosu, wari)
values
(1,3,1,0),
(1,4,1,0)

insert into obj_8p
(resi_id, obj_id, kosu, wari)
values
(1,1,1,10),
(1,2,1,0)






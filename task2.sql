use myinfo;
create table items(
	Item_Id int NOT NULL AUTO_INCREMENT,
    Item_Name varchar(100),
    Tax_code int,
    Suplier_code int,
    Purchase_price double,
    Selling_price double,
    primary key(Item_Id)
    );              
 insert into  Items(Item_Name,Tax_code,Suplier_code,Purchase_price,Selling_price) 
values('cola',6,1,20,30);

insert into  Items(Item_Name,Tax_code,Suplier_code,Purchase_price,Selling_price) 
values('apple',1,4,45,78);

insert into  Items(Item_Name,Tax_code,Suplier_code,Purchase_price,Selling_price) 
values('orange',6,3,22,30);

insert into  Items(Item_Name,Tax_code,Suplier_code,Purchase_price,Selling_price) 
values('pears',6,5,26,64);

insert into  Items(Item_Name,Tax_code,Suplier_code,Purchase_price,Selling_price) 
values('Lemon',4,2,10,15);

insert into  Items(Item_Name,Tax_code,Suplier_code,Purchase_price,Selling_price) 
values('pen',2,1,3.50,7);

insert into  Items(Item_Name,Tax_code,Suplier_code,Purchase_price,Selling_price) 
values('pencil',6,4,2,5);

insert into  Items(Item_Name,Tax_code,Suplier_code,Purchase_price,Selling_price) 
values('eraser',2,3,3,7);

insert into  Items(Item_Name,Tax_code,Suplier_code,Purchase_price,Selling_price) 
values('marker',2,5,15,30);

insert into  Items(Item_Name,Tax_code,Suplier_code,Purchase_price,Selling_price) 
values('Bag',5,5,260,350);

insert into  Items(Item_Name,Tax_code,Suplier_code,Purchase_price,Selling_price) 
values('onion',5,2,30,40);

insert into  Items(Item_Name,Tax_code,Suplier_code,Purchase_price,Selling_price) 
values('tomato',2,1,20,35);

insert into  Items(Item_Name,Tax_code,Suplier_code,Purchase_price,Selling_price) 
values('fanta',6,4,60,85);

insert into  Items(Item_Name,Tax_code,Suplier_code,Purchase_price,Selling_price) 
values('lemonade',2,3,30,45);

insert into  Items(Item_Name,Tax_code,Suplier_code,Purchase_price,Selling_price) 
values('cover',2,5,23,45);   
create table tax_Rate(
	tax_code int ,
    tax_percentage double, 
    PRIMARY KEY (tax_code) 
    );
insert into tax_Rate(tax_code,tax_percentage)values(1,3);
insert into tax_Rate(tax_code,tax_percentage)values(2,5);
insert into tax_Rate(tax_code,tax_percentage)values(4,12);
insert into tax_Rate(tax_code,tax_percentage)values(5,18);
insert into tax_Rate(tax_code,tax_percentage)values(6,28);    
select* from tax_rate;    
create table supplier(
	supplier_code int,
	supplier_Name varchar(100),
	mobile_number varchar(20),
	address varchar(255),
	gst varchar(16),
	mail_id varchar(35),
	PRIMARY KEY(supplier_code)
);
insert into supplier(supplier_code,supplier_Name,mobile_number,Address,GST,Mail_id)
values(1,"rohan",'9912343714','k.k.Nagar',24,'vivekkumar@gmail.com');

insert into supplier(supplier_code,supplier_Name,mobile_number,Address,GST,Mail_id)
values(2,"Usha",'9965343714','k Nagar',25,'Shreeram@gmail.com');

insert into supplier(supplier_code,supplier_Name,mobile_number,Address,GST,Mail_id)
values(3,"Arihant",'9965453714','A k Nagar',25,'Akaashkumar@gmail.com');

insert into supplier(supplier_code,supplier_Name,mobile_number,Address,GST,Mail_id)
values(4,"roshan",'9912433714','M Nagar',3,'Nikhilkumar@gmail.com');

insert into supplier(supplier_code,supplier_Name,mobile_number,Address,GST,Mail_id)
values(5,"HP",'9964343714','P k Nagar',20 ,'Suryakumar@gmail.com');
select * from items where Tax_code=6;
select *from items where Suplier_code=3;
select *from items where Item_Name like 'p%';
select *from items where Item_Name like '%r';
select *from items where Item_Name like 'l%n' or Item_Name like 'l%e';
select *from items where Selling_price between 20 and 80;
select Tax_code,count(*) from items group by Tax_code;
select supplier_Name,count(*)as countt from items inner join supplier on items.Suplier_code=supplier.supplier_code
                                               group by Suplier_code;
select supplier_Name,count(*)as countt from items inner join supplier on items.Suplier_code=supplier.supplier_code
                                               group by Suplier_code
                                               order by countt desc
                                               limit 1;
select Item_Name,Selling_price from items where Selling_price=(select max(Selling_price) from items);  
select Item_Name,Purchase_price from items where Purchase_price=(select min(Purchase_price) from items); 
select tax_percentage,avg(Selling_price) from items  join tax_Rate on items.Tax_code=tax_rate.tax_code
                                      group by tax_percentage  ;  
select Suplier_code,avg(Selling_price) from items inner join supplier on items.Suplier_code=supplier.supplier_code
                                      group by supplier_code
                                      order by avg(Selling_price);                                      
select item_id,item_name,supplier_name,tax_percentage from items inner join tax_rate on items.Tax_code=tax_rate.tax_code 
                                                                 inner join supplier on supplier.supplier_code=items.Suplier_code;
select item_id,item_name,(Selling_price-0.3*selling_price) from items;  
savepoint a;
alter table items add (category varchar(10));
update items set category='0-10' where Selling_price between 0 and 10;
update items set category='10-20' where Selling_price between 10 and 20;
update items set category='20-30' where Selling_price between 20 and 30;
update items set category='30-50' where Selling_price between 30 and 50;
update items set category='50-100' where Selling_price between 50 and 100;
update items set category='>100' where Selling_price>100;
select * from items;
select category,count(*) from items group by category;
rollback to a;
                                                             
									                              

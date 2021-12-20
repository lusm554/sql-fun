-- CREATE TABLES

create table if not exists product (
  maker varchar(10) not null,
  model varchar(50) not null,
  type varchar(50) not null,
  primary key (model)
);

create table if not exists laptop (
  code bigint generated always as identity primary key,
  model varchar(50) not null,
  speed smallint not null,
  ram smallint not null,
  hd real not null,
  price money null,
  screen smallint not null,
  foreign key (model)
    references product (model) 
);

create table if not exists pc (
  code bigint generated always as identity primary key,
  model varchar(50) not null,
  speed smallint not null,
  ram smallint not null,
  hd real not null,
  cd varchar(10) not null,
  price money null,
  foreign key (model)
    references product (model)
);

create table if not exists printer (
  code bigint generated always as identity primary key, 
  model varchar(50) not null,
  color char(1) not null,
  type varchar(10) not null,
  price money null,
  foreign key (model)
    references product (model)
);

insert into product (maker, model, type)
values
  ('B','1121','PC'),
  ('A','1232','PC'),
  ('A','1233','PC'),
  ('E','1260','PC'),
  ('A','1276','Printer'),
  ('D','1288','Printer'),
  ('A','1298','Laptop'),
  ('C','1321','Laptop'),
  ('A','1401','Printer'),
  ('A','1408','Printer'),
  ('D','1433','Printer'),
  ('E','1434','Printer'),
  ('B','1750','Laptop'),
  ('A','1752','Laptop'),
  ('E','2113','PC'),
  ('E','2112','PC');

insert into pc (model, speed, ram, hd, cd, price)
values
  ('1232',500,64,5,'12x',600),
  ('1121',750,128,14,'40x',850),
  ('1233',500,64,5,'12x',600),
  ('1121',600,128,14,'40x',850),
  ('1121',600,128,8,'40x',850),
  ('1233',750,128,20,'50x',950),
  ('1232',500,32,10,'12x',400),
  ('1232',450,64,8,'24x',350),
  ('1232',450,32,10,'24x',350),
  ('1260',500,32,10,'12x',350),
  ('1233',900,128,40,'40x',980),
  ('1233',800,128,20,'50x',970);

insert into laptop (model, speed, ram, hd, price, screen)
values
  ('1298',350,32,4,700,11),
  ('1321',500,64,8,970,12),
  ('1750',750,128,12,1200,14),
  ('1298',600,64,10,1050,15),
  ('1752',750,128,10,1150,14),
  ('1298',450,64,10,950,12);

insert into printer (model, color, type, price)
values
  ('1276','n','Laser',400),
  ('1433','y','Jet',270),
  ('1434','y','Jet',290),
  ('1401','n','Matrix',150),
  ('1408','n','Matrix',270),
  ('1288','n','Laser',400);


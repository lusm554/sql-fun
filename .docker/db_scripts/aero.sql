-- CREATE TABLES
create table if not exists company (
  id_comp bigint generated always as identity primary key,
  name char(10)
  --primary key (id_comp) -- already primary key
);

create table if not exists passenger (
  id_psg bigint generated always as identity primary key,
  name char(20) not null
  --primary key (id_psg) -- already primary key
);

create table if not exists trip (
  --trip_no bigint generated always as identity primary key,
  trip_no bigint,
  id_comp bigint not null,
  plane char(10) not null,
  town_from char(25) not null,
  town_to char(25) not null,
  time_out timestamp not null,
  time_in timestamp not null,
  primary key (trip_no),
  foreign key (id_comp)
    references company (id_comp)
);

create table if not exists pass_in_trip (
  --trip_no bigint generated always as identity primary key,
  trip_no bigint,
  date timestamp not null,
  id_psg bigint not null,
  place char(10) not null,
  primary key (trip_no, date, id_psg),
  foreign key (id_psg)
    references passenger (id_psg),
  foreign key (trip_no)
    references trip (trip_no)
);

-- INSERT DATA
insert into company (name)
values
  ('Don_avia  '),
  ('Aeroflot  '),
  ('Dale_avia '),
  ('air_France'),
  ('British_AW');

insert into passenger (name)
values
	('Bruce Willis        '),
	('George Clooney      '),
	('Kevin Costner       '),
	('Donald Sutherland   '),
	('Jennifer Lopez      '),
	('Ray Liotta          '),
	('Samuel L. Jackson   '),
	('Nikole Kidman       '),
	('Alan Rickman        '),
	('Kurt Russell        '),
	('Harrison Ford       '),
	('Russell Crowe       '),
	('Steve Martin        '),
	('Michael Caine       '),
	('Angelina Jolie      '),
	('Mel Gibson          '),
	('Michael Douglas     '),
	('John Travolta       '),
	('Sylvester Stallone  '),
	('Tommy Lee Jones     '),
	('Catherine Zeta-Jones'),
	('Antonio Banderas    '),
	('Kim Basinger        '),
	('Sam Neill           '),
	('Gary Oldman         '),
	('Clint Eastwood      '),
	('Brad Pitt           '),
	('Johnny Depp         '),
	('Pierce Brosnan      '),
	('Sean Connery        '),
	('Bruce Willis        '),
	('Mullah Omar         ');

insert into trip (trip_no, id_comp, plane, town_from, town_to, time_out, time_in)
values
  (1100,4,'Boeing    ','Rostov                   ','Paris                    ','19000101 14:30:00.000','19000101 17:50:00.000'),
  (1101,4,'Boeing    ','Paris                    ','Rostov                   ','19000101 08:12:00.000','19000101 11:45:00.000'),
  (1123,3,'TU-154    ','Rostov                   ','Vladivostok              ','19000101 16:20:00.000','19000101 03:40:00.000'),
  (1124,3,'TU-154    ','Vladivostok              ','Rostov                   ','19000101 09:00:00.000','19000101 19:50:00.000'),
  (1145,2,'IL-86     ','Moscow                   ','Rostov                   ','19000101 09:35:00.000','19000101 11:23:00.000'),
  (1146,2,'IL-86     ','Rostov                   ','Moscow                   ','19000101 17:55:00.000','19000101 20:01:00.000'),
  (1181,1,'TU-134    ','Rostov                   ','Moscow                   ','19000101 06:12:00.000','19000101 08:01:00.000'),
  (1182,1,'TU-134    ','Moscow                   ','Rostov                   ','19000101 12:35:00.000','19000101 14:30:00.000'),
  (1187,1,'TU-134    ','Rostov                   ','Moscow                   ','19000101 15:42:00.000','19000101 17:39:00.000'),
  (1188,1,'TU-134    ','Moscow                   ','Rostov                   ','19000101 22:50:00.000','19000101 00:48:00.000'),
  (1195,1,'TU-154    ','Rostov                   ','Moscow                   ','19000101 23:30:00.000','19000101 01:11:00.000'),
  (1196,1,'TU-154    ','Moscow                   ','Rostov                   ','19000101 04:00:00.000','19000101 05:45:00.000'),
  (7771,5,'Boeing    ','London                   ','Singapore                ','19000101 01:00:00.000','19000101 11:00:00.000'),
  (7772,5,'Boeing    ','Singapore                ','London                   ','19000101 12:00:00.000','19000101 02:00:00.000'),
  (7773,5,'Boeing    ','London                   ','Singapore                ','19000101 03:00:00.000','19000101 13:00:00.000'),
  (7774,5,'Boeing    ','Singapore                ','London                   ','19000101 14:00:00.000','19000101 06:00:00.000'),
  (7775,5,'Boeing    ','London                   ','Singapore                ','19000101 09:00:00.000','19000101 20:00:00.000'),
  (7776,5,'Boeing    ','Singapore                ','London                   ','19000101 18:00:00.000','19000101 08:00:00.000'),
  (7777,5,'Boeing    ','London                   ','Singapore                ','19000101 18:00:00.000','19000101 06:00:00.000'),
  (7778,5,'Boeing    ','Singapore                ','London                   ','19000101 22:00:00.000','19000101 12:00:00.000'),
  (8881,5,'Boeing    ','London                   ','Paris                    ','19000101 03:00:00.000','19000101 04:00:00.000'),
  (8882,5,'Boeing    ','Paris                    ','London                   ','19000101 22:00:00.000','19000101 23:00:00.000');


insert into pass_in_trip(trip_no, date, id_psg, place)
values
  (1100,'20030429 00:00:00.000',1,'1a        '),
  (1123,'20030405 00:00:00.000',3,'2a        '),
  (1123,'20030408 00:00:00.000',1,'4c        '),
  (1123,'20030408 00:00:00.000',6,'4b        '),
  (1124,'20030402 00:00:00.000',2,'2d        '),
  (1145,'20030405 00:00:00.000',3,'2c        '),
  (1181,'20030401 00:00:00.000',1,'1a        '),
  (1181,'20030401 00:00:00.000',6,'1b        '),
  (1181,'20030401 00:00:00.000',8,'3c        '),
  (1181,'20030413 00:00:00.000',5,'1b        '),
  (1182,'20030413 00:00:00.000',5,'4b        '),
  (1187,'20030414 00:00:00.000',8,'3a        '),
  (1188,'20030401 00:00:00.000',8,'3a        '),
  (1182,'20030413 00:00:00.000',9,'6d        '),
  (1145,'20030425 00:00:00.000',5,'1d        '),
  (1187,'20030414 00:00:00.000',10,'3d        '),
  --(8882,'20051106 00:00:00.000',37,'1a        '),
  --(7771,'20051107 00:00:00.000',37,'1c        '),
  --(7772,'20051107 00:00:00.000',37,'1a        '),
  --(8881,'20051108 00:00:00.000',37,'1d        '),
  (7778,'20051105 00:00:00.000',10,'2a        '),
  (7772,'20051129 00:00:00.000',10,'3a        '),
  (7771,'20051104 00:00:00.000',11,'4a        '),
  (7771,'20051107 00:00:00.000',11,'1b        '),
  (7771,'20051109 00:00:00.000',11,'5a        '),
  (7772,'20051107 00:00:00.000',12,'1d        '),
  (7773,'20051107 00:00:00.000',13,'2d        '),
  (7772,'20051129 00:00:00.000',13,'1b        '),
  (8882,'20051113 00:00:00.000',14,'3d        '),
  (7771,'20051114 00:00:00.000',14,'4d        '),
  (7771,'20051116 00:00:00.000',14,'5d        '),
  (7772,'20051129 00:00:00.000',14,'1c        ');


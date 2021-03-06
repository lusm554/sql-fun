create table if not exists utq (
  q_id bigint generated always as identity primary key,
  q_name varchar(35) not null
);

create table if not exists utv (
  v_id bigint generated always as identity primary key,
  v_name varchar(35) not null,
  v_color char(1) not null
);

create table if not exists utb (
  b_datetime timestamp not null,
  b_q_id bigint not null,
  b_v_id bigint not null,
  b_vol smallint null,
  primary key (b_datetime, b_q_id, b_v_id),
  foreign key (b_q_id)
    references utq (q_id),
  foreign key (b_v_id)
      references utv (v_id)
);


insert into utq (q_name)
values
  ('Square # 01'),
  ('Square # 02'),
  ('Square # 03'),
  ('Square # 04'),
  ('Square # 05'),
  ('Square # 06'),
  ('Square # 07'),
  ('Square # 08'),
  ('Square # 09'),
  ('Square # 10'),
  ('Square # 11'),
  ('Square # 12'),
  ('Square # 13'),
  ('Square # 14'),
  ('Square # 15'),
  ('Square # 16'),
  ('Square # 17'),
  ('Square # 18'),
  ('Square # 19'),
  ('Square # 20'),
  ('Square # 21'),
  ('Square # 22'),
  ('Square # 23'),
  ('Square # 25');

insert into utv (v_name, v_color)
values
  ('Balloon # 01','R'),
  ('Balloon # 02','R'),
  ('Balloon # 03','R'),
  ('Balloon # 04','G'),
  ('Balloon # 05','G'),
  ('Balloon # 06','G'),
  ('Balloon # 07','B'),
  ('Balloon # 08','B'),
  ('Balloon # 09','B'),
  ('Balloon # 10','R'),
  ('Balloon # 11','R'),
  ('Balloon # 12','R'),
  ('Balloon # 13','G'),
  ('Balloon # 14','G'),
  ('Balloon # 15','B'),
  ('Balloon # 16','B'),
  ('Balloon # 17','R'),
  ('Balloon # 18','G'),
  ('Balloon # 19','B'),
  ('Balloon # 20','R'),
  ('Balloon # 21','G'),
  ('Balloon # 22','B'),
  ('Balloon # 23','R'),
  ('Balloon # 24','G'),
  ('Balloon # 25','B'),
  ('Balloon # 26','B'),
  ('Balloon # 27','R'),
  ('Balloon # 28','G'),
  ('Balloon # 29','R'),
  ('Balloon # 30','G'),
  ('Balloon # 31','R'),
  ('Balloon # 32','G'),
  ('Balloon # 33','B'),
  ('Balloon # 34','R'),
  ('Balloon # 35','G'),
  ('Balloon # 36','B'),
  ('Balloon # 37','R'),
  ('Balloon # 38','G'),
  ('Balloon # 39','B'),
  ('Balloon # 40','R'),
  ('Balloon # 41','R'),
  ('Balloon # 42','G'),
  ('Balloon # 43','B'),
  ('Balloon # 44','R'),
  ('Balloon # 45','G'),
  ('Balloon # 46','B'),
  ('Balloon # 47','B'),
  ('Balloon # 48','G'),
  ('Balloon # 49','R'),
  ('Balloon # 50','G'),
  ('Balloon # 51','B'),
  ('Balloon # 52','R'),
  ('Balloon # 53','G'),
  ('Balloon # 54','B');

insert into utb (b_datetime, b_q_id, b_v_id, b_vol)
values
  ('20030101 01:12:01.000',1,1,155),
  ('20030623 01:12:02.000',1,1,100),
  ('20030101 01:12:03.000',2,2,255),
  ('20030101 01:12:04.000',3,3,255),
  ('20030101 01:12:05.000',1,4,255),
  ('20030101 01:12:06.000',2,5,255),
  ('20030101 01:12:07.000',3,6,255),
  ('20030101 01:12:08.000',1,7,255),
  ('20030101 01:12:09.000',2,8,255),
  ('20030101 01:12:10.000',3,9,255),
  ('20030101 01:12:11.000',4,10,50),
  ('20030101 01:12:12.000',5,11,100),
  ('20030101 01:12:13.000',5,12,155),
  ('20030101 01:12:14.000',5,13,155),
  ('20030101 01:12:15.000',5,14,100),
  ('20030101 01:12:16.000',5,15,50),
  ('20030101 01:12:17.000',5,16,205),
  ('20030101 01:12:18.000',6,10,155),
  ('20030101 01:12:19.000',6,17,100),
  ('20030101 01:12:20.000',6,18,255),
  ('20030101 01:12:21.000',6,19,255),
  ('20030101 01:12:22.000',7,17,155),
  ('20030101 01:12:23.000',7,20,100),
  ('20030101 01:12:24.000',7,21,255),
  ('20030101 01:12:25.000',7,22,255),
  ('20030101 01:12:26.000',8,10,50),
  ('20030101 01:12:27.000',9,23,255),
  ('20030101 01:12:28.000',9,24,255),
  ('20030101 01:12:29.000',9,25,100),
  ('20030101 01:12:30.000',9,26,155),
  ('20030101 01:12:31.000',10,25,155),
  ('20030101 01:12:31.000',10,26,100),
  ('20030101 01:12:33.000',10,27,10),
  ('20030101 01:12:34.000',10,28,10),
  ('20030101 01:12:35.000',10,29,245),
  ('20030101 01:12:36.000',10,30,245),
  ('20030101 01:12:37.000',11,31,100),
  ('20030101 01:12:38.000',11,32,100),
  ('20030101 01:12:39.000',11,33,100),
  ('20030101 01:12:40.000',11,34,155),
  ('20030101 01:12:41.000',11,35,155),
  ('20030101 01:12:42.000',11,36,155),
  ('20030101 01:12:43.000',12,31,155),
  ('20030101 01:12:44.000',12,32,155),
  ('20030101 01:12:45.000',12,33,155),
  ('20030101 01:12:46.000',12,34,100),
  ('20030101 01:12:47.000',12,35,100),
  ('20030101 01:12:48.000',12,36,100),
  ('20030101 01:13:01.000',4,37,20),
  ('20030101 01:13:02.000',8,38,20),
  ('20030101 01:13:03.000',13,39,123),
  ('20030101 01:13:04.000',14,39,111),
  ('20030101 01:13:05.000',14,40,50),
  ('20030101 01:13:06.000',15,41,50),
  ('20030101 01:13:07.000',15,41,50),
  ('20030101 01:13:08.000',15,42,50),
  ('20030101 01:13:09.000',15,42,50),
  ('20030101 01:13:10.000',16,42,50),
  ('20030101 01:13:11.000',16,42,50),
  ('20030101 01:13:12.000',16,43,50),
  ('20030101 01:13:13.000',16,43,50),
  ('20030101 01:13:14.000',16,47,50),
  ('20030101 01:13:15.000',17,44,10),
  ('20030101 01:13:16.000',17,44,10),
  ('20030101 01:13:17.000',17,45,10),
  ('20030101 01:13:18.000',17,45,10),
  ('20030201 01:13:19.000',18,45,10),
  ('20030301 01:13:20.000',18,45,10),
  ('20030401 01:13:21.000',18,46,10),
  ('20030501 01:13:22.000',18,46,10),
  ('20030611 01:13:23.000',19,44,10),
  ('20030101 01:13:24.000',19,44,10),
  ('20030101 01:13:25.000',19,45,10),
  ('20030101 01:13:26.000',19,45,10),
  ('20030201 01:13:27.000',20,45,10),
  ('20030301 01:13:28.000',20,45,10),
  ('20030401 01:13:29.000',20,46,10),
  ('20030501 01:13:30.000',20,46,10),
  ('20030201 01:13:31.000',21,49,50),
  ('20030202 01:13:32.000',21,49,50),
  ('20030203 01:13:33.000',21,50,50),
  ('20030204 01:13:34.000',21,50,50),
  ('20030205 01:13:35.000',21,48,1),
  ('20000101 01:13:36.000',22,50,50),
  ('20010101 01:13:37.000',22,50,50),
  ('20020101 01:13:38.000',22,51,50),
  ('20020601 01:13:39.000',22,51,50),
  ('20030101 01:13:05.000',4,37,185);


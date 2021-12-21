-- CREATE TABLES
create table if not exists battles (
  name varchar(20) not null,
  date timestamp not null,
  primary key (name)
);

create table if not exists classes (
  class varchar(50) not null,
  type varchar(2) not null,
  country varchar(20) not null,
  numguns smallint null,
  bore real null,
  displacement int null,
  primary key (class)
);

create table if not exists ships (
  name varchar(50) not null,
  class varchar(50) not null,
  launched smallint null,
  primary key (name),
  foreign key (class)
    references classes (class)
);

create table if not exists outcomes (
  ship varchar(50) not null,
  battle varchar(20) not null,
  result varchar(10) not null,
  primary key (ship, battle),
  foreign key (battle)
    references battles (name)
);

-- INSERT DATA

insert into classes (class, type, country, numguns, bore, displacement)
values
  ('Bismarck','bb','Germany',8,15,42000),
  ('Iowa','bb','USA',9,16,46000),
  ('Kongo','bc','Japan',8,14,32000),
  ('North Carolina','bb','USA',12,16,37000),
  ('Renown','bc','Gt.Britain',6,15,32000),
  ('Revenge','bb','Gt.Britain',8,15,29000),
  ('Tennessee','bb','USA',12,14,32000),
  ('Yamato','bb','Japan',9,18,65000);

insert into battles (name, date)
values
  ('Guadalcanal','19421115 00:00:00.000'),
  ('North Atlantic','19410525 00:00:00.000'),
  ('North Cape','19431226 00:00:00.000'),
  ('Surigao Strait','19441025 00:00:00.000'),
  ('#Cuba62a'   , '19621020'),
  ('#Cuba62b'   , '19621025');


insert into ships (name, class, launched)
values
  ('California','Tennessee',1921),
  ('Haruna','Kongo',1916),
  ('Hiei','Kongo',1914),
  ('Iowa','Iowa',1943),
  ('Kirishima','Kongo',1915),
  ('Kongo','Kongo',1913),
  ('Missouri','Iowa',1944),
  ('Musashi','Yamato',1942),
  ('New Jersey','Iowa',1943),
  ('North Carolina','North Carolina',1941),
  ('Ramillies','Revenge',1917),
  ('Renown','Renown',1916),
  ('Repulse','Renown',1916),
  ('Resolution','Renown',1916),
  ('Revenge','Revenge',1916),
  ('Royal Oak','Revenge',1916),
  ('Royal Sovereign','Revenge',1916),
  ('Tennessee','Tennessee',1920),
  ('Washington','North Carolina',1941),
  ('Wisconsin','Iowa',1944),
  ('Yamato','Yamato',1941),
  ('South Dakota','North Carolina',1941);


insert into outcomes (ship, battle, result)
values
  ('Bismarck','North Atlantic','sunk'),
  ('California','Surigao Strait','OK'),
  ('Duke of York','North Cape','OK'),
  ('Fuso','Surigao Strait','sunk'),
  ('Hood','North Atlantic','sunk'),
  ('King George V','North Atlantic','OK'),
  ('Kirishima','Guadalcanal','sunk'),
  ('Prince of Wales','North Atlantic','damaged'),
  ('Rodney','North Atlantic','OK'),
  ('Schamhorst','North Cape','sunk'),
  ('South Dakota','Guadalcanal','damaged'),
  ('Tennessee','Surigao Strait','OK'),
  ('Washington','Guadalcanal','OK'),
  ('West Virginia','Surigao Strait','OK'),
  ('Yamashiro','Surigao Strait','sunk'),
  ('California','Guadalcanal','damaged');



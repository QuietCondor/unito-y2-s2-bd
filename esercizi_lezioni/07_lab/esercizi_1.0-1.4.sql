-- Active: 1742326609985@@postgres@5432@dbcarlospalominoa
/*
    Se ci sono errori runnare dall'inizio in quanto fara' fuori
    tutto con il drop schema.
*/

drop schema if exists lab_07 cascade;
create schema if not exists lab_07;

create table if not exists lab_07.suppliers(
    snum char(2) primary key,
    sname varchar(50) not null,
    status smallint not null,
    city varchar(50) not null
);

create table if not exists lab_07.parts(
    pnum char(2) primary key,
    pname varchar(50) not null,
    color varchar(50) not null,
    weight smallint not null,
    city varchar(50) not null
);

create table if not exists lab_07.supply(
    snum char(2) not null,
    pnum char(2) not null,
    qty smallint not null,
    primary key(snum, pnum),
    -- foreign key constraints
    constraint fk_suppliers
    foreign key(snum) references lab_07.suppliers(snum)
    on update cascade
    on delete cascade,

    constraint fk_parts
    foreign key(pnum) references lab_07.parts(pnum)
    on update cascade
    on delete cascade
);

-- insert data
insert into lab_07.suppliers(snum, sname, status, city) values
    ('S1', 'Smith', 20, 'London'),
    ('S2', 'Jones', 10, 'Paris'),
    ('S3', 'Blake', 30, 'Paris'),
    ('S4', 'Clark', 20, 'London'),
    ('S5', 'Adams', 30, 'Athens');

insert into lab_07.parts(pnum, pname, color, weight, city) values
    ('P1', 'Nut', 'Red', 12, 'London'),
    ('P2', 'Bolt', 'Green', 17, 'Paris'),
    ('P3', 'Screw', 'Blue', 17, 'Rome'),
    ('P4', 'Screw', 'Red', 14, 'London'),
    ('P5', 'Cam', 'Blue', 12, 'Paris'),
    ('P6', 'Cog', 'Red', 19, 'London')
;

insert into lab_07.supply(snum, pnum, qty) values
    ('S1', 'P1', 300),
    ('S1', 'P2', 200),
    ('S1', 'P3', 400),
    ('S1', 'P4', 200),
    ('S1', 'P5', 100),
    ('S1', 'P6', 100),
    ('S2', 'P1', 300),
    ('S2', 'P2', 400),
    ('S3', 'P2', 200),
    ('S4', 'P2', 200),
    ('S4', 'P4', 300),
    ('S4', 'P5', 400)
;

-- query di prova
-- select * from lab_07.parts;
-- select * from lab_07.suppliers;
-- select * from lab_07.supply;
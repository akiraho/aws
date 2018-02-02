create database if not exists awstests;

use awstests;

create table users (
    id int,
    username varchar(255),
    password varchar(255)
);

insert into users values (1, 'username01', 'password01');
insert into users values (1, 'username02', 'password02');
insert into users values (1, 'username03', 'password03');

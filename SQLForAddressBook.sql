show databases;

create database addressbook;

use addressbook;

select database();
create table addressbook(
     id       int unsigned not null auto_increment,
     first_name       varchar(10),
     last_name        varchar(10),
     address  varchar(100),
     city     varchar(20),
     state    varchar(20),
     zip      int ,
     phone_number     int,
     email    varchar(30),
     primary key (id)
);

show tables;
describe addressbook;
insert into addressbook (first_name,last_name,address,city,state,zip,phone_number,email)
 values ('Rajshri','Wagh','Shivcolony','Vadodara','Gujarat',424002,9475816,'raj@gmail.com'),
 ('Taksh','Mahajan','Shivaji Nagar','Pune','Maharashtra',451006,8844556,'Taksh@gmail.com'),
 ('jenny','Potter','XYZ','LA','California',456123,641356,'jenny@gmail.com');

select * from addressbook;
update addressbook set city='Houston' where id=3;

select * from addressbook;
delete from addressbook where id=3;
 
select * from addressbook where state='Maharashtra';
select * from addressbook where city='Mumbai';

delete from addressbook where first_name='Taksh';
select * from addressbook;

update addressbook
set address='FC Road'
where first_name='Rajshri';

insert into addressbook (first_name,last_name,address,city,state,zip,phone_number,email)
values ('bhagi','Patil','Wayle Nagar','Mumbai','Maharashtra',444002,45463213,'bhagi@gmail.com'),
('raj','Nikam','Shaalimar Nagar','Nashik','Maharashtra',651006,2314899,'raj@gmail.com'),
('Anna','Wallise','pqr','Albany','New York',789456,654561,'anna@gmail.com');

select Count(*) from addressbook where city='Nashik' and state='Maharashtra';

insert into addressbook (first_name,last_name,address,city,state,zip,phone_number,email)
values ('Abhishek','Sharma','Dwarka Road','Nashik','Maharashtra',444002,45463213,'shubhangi@gmail.com');

select * from addressbook;

select * from addressbook where city='Nashik' order by first_name;
 
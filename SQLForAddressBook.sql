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

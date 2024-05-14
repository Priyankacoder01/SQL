CREATE DATABASE learning;
use learning;
create table temp1(
id int UNIQUE
);
INSERT INTO temp1 values(101);
INSERT INTO temp1 values(102);

create table temp2(
id int,name varchar(50),age int,city varchar(50),PRIMARY KEY(id)
);
create table temp3(
id int,name varchar(50),age int,city varchar(50),PRIMARY KEY(id,name)
);

create table emp(
id int primary key,name varchar(40),salary int default 25000);
insert into emp(id,name) values(1,"aman");
insert into emp(id,name) values(2,"priya");
insert into emp(id,name,salary) values(3,"ishuu",56000);
select * from emp;

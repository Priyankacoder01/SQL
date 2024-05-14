CREATE DATABASE CUSTOMER;
USE CUSTOMER ;
CREATE TABLE payment(
custmer_id int primary key,customer varchar(50),mode varchar(60),city varchar(50)
);
INSERT INTO payment
(custmer_id,customer,mode,city) VALUES
(101,"Olivia Barrette","Netbanking","Portland");
INSERT INTO payment
(custmer_id,customer,mode,city) VALUES
(102,"Ethan Sinclair","Credit card","Miami");
INSERT INTO payment
(custmer_id,customer,mode,city) VALUES
(103,"maya hertnadez","Credit card","seattle"),
(104,"Liam DONOVAN","NetBanking","Denver"),
(105,"Sophia Ngyugen","Credit card","New Orelan"),
(106,"Caleb Foster","Debit card","Minneapolis"),
(107,"Ava Patel","Debit card","Phoenix"),
(108,"Lucas Carter","Netbanking","Boston"),
(109,"isabella Martinez","Netbanking","Nashville"),
(110,"Jackson Brooks","Debit card","Boston");
SELECT * FROM  payment;
SELECT mode,count(customer) from payment GROUP BY mode;








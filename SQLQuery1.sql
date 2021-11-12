-----Welcome to AddressBook System------


----------UC1--Create Addressbook Database------------ 
CREATE DATABASE AddressBookService;
USE AddressBookService;


-------------UC2-------------
------Create table------------------

CREATE TABLE AddressBookTable(
FirstName varchar(100) not null,
LastName varchar(50),
Address varchar(200),
City varchar(150),
StateName varchar(100),
ZipCode int,
Phonenum bigint,
EmailId varchar(100)
);
SELECT * FROM AddressBookTable;

----------UC3----->Insert into tables using fields--------

INSERT  AddressBookTable VALUES('Sarika','Boxi','Jhirpani','Rourkela','Odisha',769042,458721564,'sarikabx12@gmail.com'),
('Sujata','Patra','Jhirpani','Rourkela','Odisha',769042,3587215654,'sujatax14@gmail.com'),
('Debasmita','Sutar','Jagda','Rourkela','Odisha',769042,258721564,'deba12@gmail.com'),
('Suchitra','Mallick','Kalpana','Bhubaneswar','Odisha',751042,458721564,'suchim12@gmail.com');
---Retrieve all data from AddressBookTable---------
SELECT * FROM AddressBookTable;


--------------------UC4----------------------------------------
------edit existing contact person using person name----------
UPDATE AddressBookTable SET Phonenum=7845712874 WHERE FirstName='Sujata';
UPDATE AddressBookTable SET LastName='Mahajan' WHERE FirstName='Suchitra';
UPDATE AddressBookTable SET EmailId='smita123@gmail.com' WHERE LastName='Sutar';
UPDATE AddressBookTable SET ZipCode='751185' WHERE FirstName='Suchitra';
SELECT * FROM AddressBookTable;


---------------------UC5---------------
------Delete a contact using person name-----
DELETE FROM AddressBookTable WHERE FirstName='Sujata';
SELECT * FROM AddressBookTable;

--------------------------UC6-----------------
---------------Retrieve data belongs to state or city---------
SELECT FirstName FROM  AddressBookTable WHERE City='Bhubaneswar' or StateName='Odisha';

-----------------UC7--------------------------
------Size or Count of addressbook using state and city--------
 SELECT COUNT(City) AS Size,City,StateName FROM AddressBookTable GROUP BY StateName,City;


 --------------------UC8--------------
-------Sort the name alphabetically using city name--------
SELECT FirstName FROM AddressBookTable WHERE City='Rourkela' ORDER BY FirstName;
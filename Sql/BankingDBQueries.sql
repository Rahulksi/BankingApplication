create database bank;

use bank; 

create table Accounts
(
AccountName varchar(50) Not Null,
Balance decimal(10,2) NOT NULL,
PRIMARY KEY (AccountName)
);

create table Transactions
(
Id int primary key identity(1,1),
FromAccount varchar(50) Not Null,
ToAccount varchar(50) Not Null,
TransactionTime datetime NOT NULL  DEFAULT getdate(),
AmountDebited decimal(10,2) NOT NULL CHECK (AmountDebited >= 1 and AmountDebited <= 10000),
FromAccountBalance decimal(10,2) NOT NULL,
ToAccountBalance decimal(10,2) NOT NULL
);
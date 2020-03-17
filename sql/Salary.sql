create table Salary
(
	transactionNo int auto_increment primary key,
	email varchar(50),
	amount int,
    date timestamp DEFAULT CURRENT_TIMESTAMP,
    foreign key(email) references email(email)
);
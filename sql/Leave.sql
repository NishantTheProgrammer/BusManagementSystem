create table leave_request
(
	applicationNo int auto_increment primary key,
	reason varchar(50),
    type varchar(50),
    date_from date,
    date_to date,
    address varchar(100),
    status varchar(20),
    email varchar(50),
    foreign key(email)
    references Email(email)
);

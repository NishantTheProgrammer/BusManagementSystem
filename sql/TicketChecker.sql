create table TicketChecker
(
	email varchar(50) not null primary key,
    name varchar(30),
    phone varchar(10),
    password varchar(20),
    dob date,
    profilePic BLOB,
    foreign key(email)
    references Email(email)
);
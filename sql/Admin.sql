create table Admin
(
	email varchar(50) not null primary key,
    name varchar(30),
    phone varchar(10),
    password varchar(20),
    profilePic BLOB,
    foreign key(email)
    references Email(email)
);
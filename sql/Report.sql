create table Report
(
	reportNo int primary key auto_increment,
    routeNo varchar(50),
    standName varchar(255),
    busNo varchar(10),
    description varchar(999),
    submittedBy varchar(50),
    foreign key(submittedBy)
    references email(email)
);
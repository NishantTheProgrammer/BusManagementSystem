create table ticket
(
	ticketNo int auto_increment primary key,
	routeNo varchar(50) not null,
    source varchar(255) not null,
    destination varchar(255) not null,
    passangerId int,
    bookingTime timestamp DEFAULT CURRENT_TIMESTAMP,
    feedback varchar(999),
    type varchar(4),
    noOfpassangers int,
    fare int,
    foreign key(routeNo) references route(routeNo)
);
CREATE TABLE Route
(
	serialNo int primary key auto_increment,
    routeNo varchar(50) unique,
    source varchar(255),
    destination varchar(255)
);
use shivajiroadways;
select * from route;
select * from ticket;
desc route;
desc routestands;
desc ticket;
desc ticketOutput;
drop view ticketOutput;
drop table ticket;
SELECT DATE_FORMAT(bookingTime, '%m/%d/%Y %H:%i:%S') as bookingDate, ticketNo, routeNo, source, destination, feedback FROM ticket;
select * from ticketOutput;
alter table ticket auto_increment=1001;
alter table ticket add feedback varchar(999);
insert into ticket(routeNo, source, destination, passangerId, type, noOfpassangers, fare) values('234', 'Bhajanpura', 'Khalsa collage', 1102, 'ORD', 1, 10);
truncate ticket;
update ticketoutput set feedback = 'hello' where ticketNo = "Man_Waz1001";

select * from ticketoutput where passangerId = 1102 order by bookingDate desc limit 1;





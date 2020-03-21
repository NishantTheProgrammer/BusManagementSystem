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
alter table leave_request auto_increment=1001;
alter table ticket add feedback varchar(999);
insert into ticket(routeNo, source, destination, passangerId, type, noOfpassangers, fare) values('234', 'Bhajanpura', 'Khalsa collage', 1102, 'ORD', 1, 10);
truncate ticket;
update ticketoutput set feedback = 'hello' where ticketNo = "Man_Waz1001";
truncate table policy; 
select * from ticketoutput where passangerId = 1102 order by bookingDate desc limit 1;
insert into Policy(pName, pDescription) values("DISCLAIMER", "All the contents of this Site are only for general information or use. They do not constitute advice and should not be relied upon in making (or refraining from making) any decision <b>Shijavi Roadways</b> hereby excludes any warranty, express or implied, as to the quality, accuracy, timeliness, completeness, performance, fitness for a particular purpose of the Site or any of its contents, including (but not limited) to any financial tools contained within the Site. <b>Shijavi Roadways</b> will not be liable for any damages (including, without limitation, damages for loss of business projects, or loss of profits) arising in contract, tort or otherwise from the use of or inability to use the Site, or any of its contents, or from any action taken (or refrained from being taken) as a result of using the Site or any such contents.<b>Shivaji Roadways</b>, makes no warranty that the contents of the Site are free from infection by viruses or anything else which has contaminating or destructive properties.");
insert into Policy(pName, pDescription) values("ACCESSIBILITY STATEMENT", "The Official website of the <b>Shivaji Roadways</b> has been built with an aim to provide maximum accessibility and usability to its visitors. This website can be viewed from a variety of devices such as Desktop or Laptop computers, web-enabled mobile devices, WAP phones, PDAs, etc. However, currently Portable Document Format (PDF) files are not fully accessible We aim to be standards compliant and follow principles of usability and universal design, which should help all visitors of this website. This website is designed to meet the Guidelines for Indian Government Websites and also adheres to level AA of the Web Content Accessibility Guidelines (W.C.A.G.) 2.0 laid down by the World Wide Web Consortium (W.3.C.). Part of the information in the website is also made available through links to external Websites. External Websites are maintained by the respective departments who are responsible for making their sites accessible. If you face any problem or have suggestions regarding the accessibility of this website, please do let us know the nature of the problem along with your contact information to get back to you at the earliest.");
insert into Policy(pName, pDescription) values("Copyright Policy", "Contents of this website may not be reproduced partially or fully, without due permission from <b>Shivaji Roadways</b>. If referred to as a part of another website, the source must be appropriately acknowledged. The contents of this website cannot be used in any misleading or objectionable context.");
insert into Policy(pName, pDescription) values("Privacy Policy", "We do not collect personal information for any purpose other than to respond to you (for example, to respond to your queries). If you choose to provide us with personal information like filling out a Contact Us form with an e-mail address or postal address, and submitting it to us through the website, we use that information to respond to your message, and to help you get the information you have requested.

Our website never collects information or creates individual profiles for commercial marketing. While you must provide an e-mail address for a localized response to any incoming questions or comments to us, we recommend that you do NOT include any other personal information.");
insert into Policy(pName, pDescription) values("Hyperlink Policy", "We do not object to you linking directly to the information that is hosted on our site and no prior permission is required for the same. However, we would like you to inform us about any links provided to our site so that you can be informed of any changes or updations therein. Also, we do not permit our pages to be loaded into frames on your site. Our website's pages must load into a newly opened browser window of the user.");
insert into Policy(pName, pDescription) values("Term & Conditions", "This website is Designed, Developed and Maintained by Delhi Transport Corporation Department

These terms and conditions shall be governed by and construed in accordance with the Indian Laws. Any dispute arising under these terms and conditions shall be subject to the jurisdiction of the courts of India.

The information posted on this website could include hypertext links or pointers to information created and maintained by non-Government/private organizations. <b>Shivaji Roadways</b> is providing these links and pointers solely for your information and convenience. When you select a link to an outside website, you are leaving the 'Guidelines for Indian Government Websites' site and are subject to the privacy and security policies of the owners/sponsors of the outside website.");

ALTER TABLE ticket
DROP FOREIGN KEY FK_PersonOrder;


select * from policy;
ALTER TABLE policy MODIFY pDescription varchar(15000);
ALTER TABLE policy MODIFY pName varchar(50);

desc policy;

select distinct(standName) from routeStands where standName like '%man%' limit 4;

select * from routeStands where standName = 'Bhajanpura';
select standNo, standName from routeStands where routeNo = '212';

select routeNo from routeStands where standName= 'Seema Puri' and routeNo in( select routeNo from routeStands where standName = 'Model Town II');
desc email;
desc image;

CREATE TABLE image ( id int NOT NULL AUTO_INCREMENT,
firstname varchar(50),
lastname varchar(50),
email varchar(50),
image blob,
PRIMARY KEY (id)
);
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert into image values('Nishant', 'kumar', 'knishant113@gmail.com', load_file('D:\girl.jpg'));
select * from image;

insert into image(firstname, lastname, email,image) values('Nishant', 'kumar', 'knishant113@gmail.com', load_file('D:\girl.jpg'));

CREATE TABLE image2 ( id int NOT NULL AUTO_INCREMENT,
image blob,
PRIMARY KEY (id)
);
insert into image2 values(null, load_file('D:\\girl.jpg'));
select * from image2;






insert into Email values("knishant113@gmail.com");
desc admin;
desc Passanger;
drop table passanger;

select * from email;
select * from Admin;
select * from passanger;
delete from admin where email = 'knishant113@gmail.com';
delete from email where email = 'knishant113@gmail.com';
delete from email where email = 'sunny@gmail.com';
delete from passanger where email = 'knishant113@gmail.com';
delete from conductor where email = 'knishant113@gmail.com';
delete from ticketchecker where email ='knishant118@gmail.com';
delete from driver where email = 'knishant113@gmail.com';
insert into admin values('knishant113@gmail.com', 'Nishant', '8860009709', 'abchellohello');

insert into passanger(email, name, phone, password, walletBalance) values('knishant113@gmail.com', 'Nishant', '8860009709', 'abchellohello', 230);

desc Conductor;
select *,'nishant' as tablename from Conductor
union
select *,'shivam' as tablename from TicketChecker;
insert into Conductor(email, name, phone, password, dob) values('knishant113@gmail.com', 'Nishant', '8860009709', 'abchellohello', '2008-05-01');
select * from driver;
insert into driver(email, name, phone, password, licenceNo, experience, dob)  values('knishant113@gmail.com', 'Nishant', '8860009709', 'abchellohello', 'ffffffascs' '"+Integer.parseInt(experience)+"' '"+joiningDate+"');

select profilePic from admin;


select email, name, password,'admin' as tablename from admin union
select email, name, password,'passanger' as tablename from passanger union
select email, name, password,'driver' as tablename from driver union
select email, name, password,'conductor' as tablename from conductor union
select email, name, password,'ticketchecker' as tablename from ticketchecker;
delete from admin  where email = 'aktonkrocks@gmail.com' and password = '123456789';
delete from email where email = 'vivek123@gmail.com';
select * from email;

select email, name, password, profilePic, 'admin' as tablename from admin  where email = 'knishant120@gmail.com' and password = '123456789' union
select email, name, password, profilePic, 'passanger' as tablename from  passanger  where email = 'knishant120@gmail.com' and password = '123456789' union
select email, name, password, profilePic, 'driver' as tablename from driver  where email = 'knishant120@gmail.com' and password = '123456789' union
select email, name, password, profilePic, 'conductor' as tablename from conductor  where email = 'knishant120@gmail.com' and password = '123456789' union
select email, name, password, profilePic, 'ticketchecker' as tablename from ticketchecker  where email = 'knishant120@gmail.com' and password = '123456789';
select * from admin  where email = 'knishant123@gmail.com' and password = '1234';



select * from driver;

ALTER TABLE Orders
ADD CONSTRAINT FK_PersonOrder

insert into ticket(routeNo, source, destination, email, type, noOfpassangers, fare) values('971', 'gtb', 'gtb', "+session.getAttribute("email")+", '" +busType+ "', " +no+ ", " +fare+ ");


insert into ticket(routeNo, source, destination, email, type, noOfpassangers, fare) values('971', 'gtb', 'gtb', "+session.getAttribute("email")+", '" +busType+ "', " +no+ ", " +fare+ ");

insert into ticket(routeNo, source, destination, email, type, noOfpassangers, fare) values('971', 'gtb', 'gtb', 'knishant114@gmail.com', 'AC', 1, 5);
select * from passanger;
select * from ticketOutput where email = 'jaat39157@gmail.com';
drop table ticket;
select * from passanger;
update passanger set walletBalance = walletBalance - 5 where email = 'knishant114@gmail.com';
select walletBalance from passanger where email = 'knishant114@gmail.com' and walletBalance >= 5;
update passanger set walletBalance = 30 where email = 'knishant114@gmail.com';



select 'admin' as tablename from admin  where email = '"+email+"' union
select 'passanger' as tablename from  passanger  where email = '"+email+"' union
select 'driver' as tablename from driver  where email = '"+email+"' union
select 'conductor' as tablename from conductor  where email = '"+email+"' union
select 'ticketchecker' as tablename from ticketchecker  where email = '"+email+"';

desc leave_request;

insert into leave_request(reason, type, date_from, date_to, address, email) values('checking', 'personal', '2020-03-15', '2020-03-31', 'Saboli', 'knishant118@gmail.com');
delete from leave_request where email = 'knishant118@gmail.com';

select applicationNo from leave_request where email = 'knishant118@gmail.com' order by applicationNo desc limit 1;
select * from leave_request;
select status from leave_request where email = 'knishant118@gmail.com' and applicationNo=1011;

update leave_request set status='pending' where applicationNo = 1011;
desc routestands;
desc report;
delete from report where submittedBy = 'knishant118@gmail.com';
insert into report(routeNo, standName, busNo, description, submittedBy) values('971', 'Mandoli-xing', 'DL 1234', 'abcd', 'knishant113@gmail.com');
select * from report order by reportNo desc;

select * from ticketOutput;
select  timestampdiff(HOUR ,bookingTime, current_timestamp()) as remainValidity from ticket where ticketNo = 1003234;



delete from ticket where ticketNo between 1004 and 1006;
delete from email where email = 'vivek123@gmail.com';
select * from driver;
select count(*) as count from conductor;
select * from ticketchecker;
select * from passanger;
select sum(fare) as sum from ticketOutput;

update admin set name='Nishant3' where email='knishant113@gmail.com';
SELECT 
    *
FROM
    driver;
    
insert into admin(email, name, phone, password, profilePic) values('knishant124@gmail.com', 'Nishant', '1110111010', '1234', 'knishant124@gmail.com');





insert into driver(email, name, phone, password, licenceNo, experience, dob, profilePic)  values('Maurya@gmail.com', 'Maurya', '9988998800', '1234', 'ZYX1231231', '2', '2020-12-12');



delete from email where email="Maurya@gmail.com";
delete from driver where email="Maurya@gmail.com";




select * from passanger;
select ticket.ticketNo, ticket.email, passanger.name from ticket
inner join passanger on ticket.email = passanger.email;


select * from ticketOutput;

desc ticketoutput;

select profilePic, feedback, name, bookingDate from ticketOutput inner join passanger on ticketOutput.email = passanger.email where feedback is not null order by  bookingDate desc limit 2
;

update ticketoutput set feedback = null where ticketNo='del_nir1038';

update ticket set feedback=null where ticketNo='1039';
select * from passanger;














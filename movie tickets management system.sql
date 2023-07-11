Admin:
create table Admin(
Admin_id int primary key,
Admin_name varchar2(50)
);
insert into admin values(1,'Ram');
insert into admin values(2,'Raghu');
insert into admin values(3,'Pasha');
insert into admin values(4,'Brahmi');
insert into admin values(5,'Sundar');
Customer:
create table Customer(
customer_id int primary key,
customer_name varchar2(50),
email_id varchar2(100),
mobile_number varchar2(10)
);
INSERT INTO customer VALUES (1001, 'Teja', 'teja1227@email.com', '9399567455');
INSERT INTO customer VALUES (1002, 'Rohit', 'rohit264@email.com', '8856493210');
INSERT INTO customer VALUES (1003, 'Vaibhav', 'vaibhav@email.com', '7894561230');
INSERT INTO customer VALUES (1004, 'Ishan', 'ishan@email.com', '6958472031');
INSERT INTO customer VALUES (1005, 'Mayanti', 'mayanti@email.com', '9528360174');
INSERT INTO customer VALUES (1006, 'Sarah', 'sarahdavis@email.com', '8614732590');
INSERT INTO customer VALUES (1007, 'arjun', 'arjun@email.com', '9514728360');
INSERT INTO customer VALUES (1008, 'Leela', 'leelaa@email.com', '6759812043');
INSERT INTO customer VALUES (1009, 'Divya', 'divya@email.com', '9582016374');
INSERT INTO customer VALUES (1010, 'Mike Hussey', 'mikey@email.com', '7962154038');
Theatre:
create table Theatre(
theatre_id int primary key,
theatre_name varchar2(50),
location varchar2(50),
capacity int,
theatre_mail varchar2(100),
Admin_id int,
foreign key(Admin_id) references Admin(Admin_id)
);

insert into theatre values(1,'Asian Cinemas','Hanamkonda',200,'asianmovies@gmail.com',1);
insert into theatre values(2,'Bhavani Cinemas','Kazipter',100,'bhavani@gmail.com',3);
insert into theatre values(3,'PVR movies','Warangal',350,'pvrmovies@gmail.com',5);
insert into theatre values(4,'Asian Gemini','Warangal',200,'asianmovies@gmail.com',2);
insert into theatre values(5,'Ram theatre','Hanamkonda',100,'rammovies@gmail.com',4);

Screen:
create table Screen(
screen_id int primary key,
screen_type varchar2(50),
total_seats int,
theatre_id int,
foreign key(theatre_id) references Theatre(theatre_id)
);

insert into screen values(1,'Dolby Atmos',175,5);
insert into screen values(2,'Dolby Atmos',100,1);
insert into screen values(3,'MAXX Screen',100,4);
insert into screen values(4,'3D screen',100,3);
insert into screen values(5,'Dolby Atmos',100,2);
insert into screen values(6,'3D screen',175,5);
insert into screen values(7,'MAXX Screen',100,1);
insert into screen values(8,'MAXX Screen',100,2);


Seat:
create table  Seat(
seat_no varchar(30) primary key,
seat_type varchar2(50),
screen_id int,
foreign key(screen_id) references Screen(screen_id)
);

insert into seat values('A02','Recliner',1);
insert into seat values('B22','Recliner',2);
insert into seat values('A12','Recliner',3);
insert into seat values('J15','Recliner',4);
insert into seat values('C20','Recliner',5);
insert into seat values('H03','Recliner',6);
insert into seat values('F19','Recliner',7);
insert into seat values('D17','Recliner',8);
insert into seat values('A14','Regular',1);
insert into seat values('B03','Regular',2);
insert into seat values('A22','Regular',3);
insert into seat values('T12','Regular',4);
insert into seat values('S27','Regular',5);
insert into seat values('S12','Regular',6);
insert into seat values('T27','Regular',7);
insert into seat values('J08','Regular',8);
insert into seat values('N17','Deluxe',1);
insert into seat values('F10','Deluxe',2);
insert into seat values('I09','Deluxe',3);
insert into seat values('I14','Deluxe',4);
insert into seat values('G13','Deluxe',5);
insert into seat values('D20','Deluxe',6);
insert into seat values('I03','Deluxe',7);
insert into seat values('O11','Deluxe',8);
insert into seat values('C04','Regular',1);
insert into seat values('G19','Regular',2);
insert into seat values('C17','Regular',3);
insert into seat values('B02','Regular',4);
insert into seat values('A08','Regular',5);
insert into seat values('A05','Regular',6);
Movie_Info:
create table movie_info(
movie_name varchar2(50) primary key,
genre varchar2(20),
duration varchar2(20),
release_date date,
rating number
);

insert into movie_info values('Ante Sundaraniki','Rom-Com','2h12min',to_date('02-05-2022','DD-MM-YYYY'),4.9);
insert into movie_info values('CUSTODY','Action-Thriller','2h20min',to_date('10-05-2022','DD-MM-YYYY'),3.8);
insert into movie_info values('RRR','Drama','2h37min',to_date('10-05-2022','DD-MM-YYYY'),4.95);
insert into movie_info values('TOP-GUN MAVERICK','Adventure','3h01min',to_date('29-04-2022','DD-MM-YYYY'),4.5);
insert into movie_info values('EVIL DEAD RISE','Horror','2h47min',to_date('10-05-2022','DD-MM-YYYY'),4.1);


Movie:
create table Movie(
movie_id int primary key,
movie_name varchar2(50),
language varchar2(50),
foreign key (movie_name) references movie_info(movie_name)
);

insert into movie values(1,'Ante Sundaraniki','Telugu');
insert into movie values(2,'Ante Sundaraniki','Malayalam');
insert into movie values(3,'CUSTODY','Telugu');
insert into movie values(4,'RRR','Telugu');
insert into movie values(5,'RRR','Hindi');
insert into movie values(6,'TOP-GUN MAVERICK','English');
insert into movie values(7,'EVIL DEAD RISE','English');

Show:
create table Show(
show_id int primary key,
show_date date,
start_time varchar2(20),
end_time varchar2(20),
movie_id int,
foreign key(movie_id) references Movie(movie_id)
);

insert into show values(1,to_date('06-05-2022','DD-MM-YYYY'),'2:00PM','4:30pm',1);
insert into show values(2,to_date('07-05-2022','DD-MM-YYYY'),'2:30PM','5:00pm',2);
insert into show values(3,to_date('12-05-2022','DD-MM-YYYY'),'11:00AM','1:45pm',4);
insert into show values(4,to_date('09-05-2022','DD-MM-YYYY'),'2:00PM','5:15pm',1);
insert into show values(5,to_date('30-04-2022','DD-MM-YYYY'),'6:00PM','9:10pm',6);
insert into show values(6,to_date('15-05-2022','DD-MM-YYYY'),'9:00PM','11:45pm',5);
insert into show values(7,to_date('11-05-2022','DD-MM-YYYY'),'2:00PM','5:00pm',7);
insert into show values(8,to_date('11-05-2022','DD-MM-YYYY'),'3:00PM','5:30pm',3);
insert into show values(9,to_date('12-05-2022','DD-MM-YYYY'),'2:15PM','5:15pm',7);
insert into show values(10,to_date('03-05-2022','DD-MM-YYYY'),'10:35AM','1:05pm',1);

Tickets:
create table Tickets(
ticket_no int primary key,
amount int,
booking_date date,
customer_id int,
show_id int,
seat_no varchar(30),
screen_id int,
theatre_id int,
foreign key(customer_id) references Customer(customer_id),
foreign key(show_id) references Show(show_id),
foreign key(seat_no) references Seat(seat_no),
foreign key(screen_id) references Screen(screen_id),
foreign key(theatre_id) references Theatre(theatre_id)
);

insert into tickets values(1,500,to_date('01-05-2022','DD-MM-YYYY'),1001,1,'A14',1,5);
insert into tickets values(2,1000,to_date('10-05-2022','DD-MM-YYYY'),1002,3,'B22',2,1);
insert into tickets values(3,1000,to_date('14-05-2022','DD-MM-YYYY'),1003,6,'I09',3,4);
insert into tickets values(4,1500,to_date('29-04-2022','DD-MM-YYYY'),1004,5,'J15',4,3);
insert into tickets values(5,1000,to_date('11-05-2022','DD-MM-YYYY'),1005,3,'A12',2,1);
insert into tickets values(6,1200,to_date('10-05-2022','DD-MM-YYYY'),1006,8,'S27',5,2);
insert into tickets values(7,2000,to_date('09-05-2022','DD-MM-YYYY'),1007,7,'I14',4,3);
insert into tickets values(8,500,to_date('05-05-2022','DD-MM-YYYY'),1008,2,'D20',6,5);
insert into tickets values(9,1200,to_date('10-05-2022','DD-MM-YYYY'),1009,8,'G13',5,2);
insert into tickets values(10,500,to_date('02-05-2022','DD-MM-YYYY'),1002,1,'N17',1,5);
insert into tickets values(11,500,to_date('05-05-2022','DD-MM-YYYY'),1005,4,'D20',6,5);
insert into tickets values(12,1000,to_date('10-05-2022','DD-MM-YYYY'),1009,3,'J08',8,2);
insert into tickets values(13,1500,to_date('28-04-2022','DD-MM-YYYY'),1002,5,'T12',4,3);
insert into tickets values(14,2000,to_date('11-05-2022','DD-MM-YYYY'),1001,9,'T27',7,1);
insert into tickets values(15,1000,to_date('11-05-2022','DD-MM-YYYY'),1010,3,'O11',8,2);
Payment:
create table Payment(
payment_id int primary key,
payment_amount int,
transaction_type varchar2(50),
customer_id int,
ticket_no int,
foreign key(customer_id) references Customer(customer_id),
foreign key (ticket_no) references Tickets(ticket_no)
);
drop table payment;
insert into payment values(601,500,'UPI',1001,1);
insert into payment values(602,1000,'NET BANKING',1002,2);
insert into payment values(603,1000,'DEBIT CARD',1003,3);
insert into payment values(604,1500,'CREDIT CARD',1004,4);
insert into payment values(605,1000,'NTEG',1005,5);
insert into payment values(606,1200,'CASH',1006,6);
insert into payment values(607,2000,'UPI',1007,7);
insert into payment values(608,500,'CREDIT CARD',1008,8);
insert into payment values(609,1200,'ONLINE',1009,9);
insert into payment values(610,500,'UPI',1002,10);
insert into payment values(611,500,'CASH',1005,11);
insert into payment values(612,1000,'NTEG',1009,12);
insert into payment values(613,1500,'UPI',1002,13);
insert into payment values(614,2000,'DEBIT CARD',1001,14);
insert into payment values(615,1000,'ONLINE',1010,15);

select distinct c.customer_name from customer c inner join payment p on c.customer_id=p.customer_id and p.transaction_type='CASH';

SELECT DISTINCT c.customer_id,c.customer_name
FROM customer c
inner join tickets t ON c.customer_id = t.customer_id
inner join show s ON t.show_id = s.show_id
inner join movie m ON s.movie_id = m.movie_id
WHERE m.movie_name = 'RRR';

select theatre_name from theatre
where theatre_id in(
    select distinct theatre_id from screen
    group by theatre_id
    having count(screen_id)>1
);

select customer_id,customer_name from customer
where customer_id in(
    select distinct customer_id from tickets
    group by customer_id
   having count(ticket_no)>1
);

SELECT SUM(t.amount) AS total_revenue
FROM tickets t
INNER JOIN show s ON t.show_id =s.show_id
INNER JOIN movie m ON s.movie_id = m.movie_id and m.movie_name = 'Ante Sundaraniki';
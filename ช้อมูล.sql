use hotel;

insert into hotel(HotelID,HotelName,Address,Postcode,City,Country,NumRooms,Phone,StarRating)
values (10500001,"Number A Hotel","Bang Na",'20101',"Bangkok","Thailand",200,'029554204','3'),
(20500001,"Sriwanee Hotel","Bang Y",'60301',"Krabi","Thailand",320,'027657777','5'),
(30500001,"Khong Arabic Hotel","Lang Na",'20500',"Chachoengsao","Thailand",140,'028490266','3'),
(40500001,"Sawaddee Hotel","Tang eea",'40706',"Chumphon","Thailand",200,'020820056','3');

select * from hotel;

insert into employee(EmploeeID,Firstname,Lastname,DOB,Gender,Phone,Email,Salary,HotelID)
values (11100001,"Transformer","Movie",'2012-07-30',"Male","0942010059","Transformer@gmail.com",300981.81,10500001),
(11100002,"Marvel","Movie",'1912-09-16',"Female","0682017050","Marvel@gmail.com",97681.59,10500001),
(11100003,"Ben10","Por",'2020-09-28',"Male",null,"Ben10@gmail.com",120981.25,10500001),
(22200001,"Zx","Motor",'1912-02-16',"Female","0682000050","Zx@gmail.com",2765981.35,20500001),
(22200002,"s1000rr","Motor",'2004-10-22',"Male",null,"s1000rr@gmail.com",998161,20500001),
(33300001,"Tr160","Motor",'2006-04-10',"Female","0682000050","Tr160@gmail.com",782781,30500001),
(33300002,"Ktm","Motor",'2014-10-11',"Male",null,"Ktm@gmail.com",90981,30500001),
(44400001,"Honda","Motor",'2046-03-12',"Female","0682000050","Honda@gmail.com",78298.67,40500001);

select * from employee;

select e.EmploeeID , e.Firstname , e.Lastname , h.HotelName ,e.Salary 
from employee e join hotel h on e.HotelID = h.HotelID;

insert into roles(RoleID,RoleTitle,RoleDesc)
values (001,"สูบบุหรี่","ห้ามสูบบุหรี่ขณะทำงาน"),(002,"ที่จอด","กรุณาจอดรถให้ตรงหมายเลขที่จัดเตรียมไว้"),(003,"การเข้าทำงาน","กรุณามาให้ตรงเวลา");

select * from roles;

insert into roomtype(RoomType,RoomPrice,RoomDesc)
values ("ห้องนอนคนเดียว",1500.00,"1 ห้องนอน  1เตียง 1ห้องน้ำ 1ห้องนั่งเล่น "),
("ห้องนอน 2 คน",2500.00,"1 ห้องนอน 2เตียง 1ห้องน้ำ 1ห้องนั่งเล่น "),
("ห้องนอน 3 คน",3500.00,"1 ห้องนอน 3เตียง 2ห้องน้ำ 1ห้องนั่งเล่น "),
("ห้องนอน 5 คน",5500.00,"2 ห้องนอน 5เตียง 2ห้องน้ำ 1ห้องนั่งเล่น ");

select * from roomtype;

insert into rooms(RoomNo,RoomType,HotelID)
values (101,"ห้องนอนคนเดียว",10500001),(102,"ห้องนอนคนเดียว",10500001),(103,"ห้องนอน 2 คน",10500001),(104,"ห้องนอน 2 คน",10500001),
(201,"ห้องนอนคนเดียว",20500001),(202,"ห้องนอน 2 คน",20500001),(203,"ห้องนอน 3 คน",20500001),
(301,"ห้องนอนคนเดียว",30500001),(302,"ห้องนอน 2 คน",30500001),(303,"ห้องนอนคนเดียว",30500001),
(401,"ห้องนอนคนเดียว",40500001),(402,"ห้องนอน 5 คน",40500001),(403,"ห้องนอน 2 คน",40500001);

select * from rooms;

insert into guest(GuestID,Firstname,Lastname,DOB,Gender,Phone,Email,Address,Postcode,City,Country)
values 
(641001,"นาย A","รักจริง",'1985-02-24',"ชาย","0647589715","นายa@gmail.com","Bang Na",'20101',"Bangkok","Thailand"),
(641082,"นาง K","สดสาคร",'2001-11-30',"หญิง","0849582435","นางk@gmail.com","Bang Y",'60301',"Krabi","Thailand"),
(641038,"นาย X","รักนะ",'2004-08-29',"ชาย","0965824682","นายx@gmail.com","Tang eea",'40706',"Chumphon","Thailand"),
(641016,"นาง Z","สาย ",'1995-06-12',"หญิง","0613842958","นางz@gmail.com","Lang Na",'20500',"Chachoengsao","Thailand"),
(641097,"นาง R","บางใหญ่",'1987-01-17',"หญิง","0835972465","นางr@gmail.com","Tang eea",'40706',"Chumphon","Thailand"),
(641005,"นาย J","โรงกลอ",'2006-06-16',"ชาย","0815256598","นายj@gmail.com","Lang Na",'20500',"Chachoengsao","Thailand");

select * from guest;

insert into Booking(BookingID,BookingDate,BookingTime,DateArrival,DateDeparture,DateCheckIn,DateCheckOut,
NumGuest,MessageToBooking,HotelID,GuestID,RoomNo)
values 
(1550001,'2021-09-15',"18:56:19",'2021-09-27','2021-09-30','2021-09-27','2021-09-30',"3",null,10500001,641001,103),
(1550002,'2022-03-25',"16:42:13",'2022-03-28','2022-04-01','2022-03-28','2022-04-01',"1",null,40500001,641082,402),
(1550003,'2021-01-10',"10:13:54",'2021-01-16','2021-01-22','2021-01-16','2021-01-22',"3",null,30500001,641038,401),
(1550004,'2020-12-05',"09:26:35",'2020-12-15','2020-12-17','2020-12-15','2020-12-17',"2",null,10500001,641097,101),
(1550005,'2019-09-19',"11:59:29",'2019-09-22','2019-09-25','2019-09-22','2019-09-25',"5",null,20500001,641016,203),
(1550006,'2017-05-29',"14:09:21",'2017-06-12','2017-06-13','2017-06-12','2017-06-13',"1",null,10500001,641005,102); 

insert into bills(InvoiceNum,RoomCharge,PaymentDate,PaymentTime,BookingID,GuestID)
values (777001,4500.00,'2021-09-15',"18:56:19",1550001,641001),
(777002,2500.00,'2022-03-25',"16:42:13",1550002,641082),
(777003,4500.00,'2021-01-10',"10:13:54",1550003,641038),
(777004,3500.00,'2020-12-05',"09:26:35",1550004,641097),
(777005,6500.00,'2019-09-19',"11:59:29",1550005,641016),
(777006,1500.00,'2017-05-29',"14:09:21",1550006,641005);

select * from bills;


select * from hotel;
select * from employee;
select * from roles;
select * from roomtype;
select * from rooms;
select * from guest;
select * from Booking;
select * from bills;



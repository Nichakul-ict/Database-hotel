drop database if exists centara;
create database if not exists centara DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
use centara;

create table Branch ( -- ddl
	Branch_name varchar(100) not null,
    Branch_location varchar(50) not null,
    constraint PK_Branch primary key (Branch_name)
);

create table PromotionCode (
	Promo_code varchar(10) not null,
    Promotion_duedate date not null,
    constraint PK_Promo primary key (Promo_code)
);

INSERT INTO PromotionCode VALUES -- dml 
('SUMMER2022', '2022-12-31'),
('BIRTHDAY22', '2022-12-31'),
('WINTER2023', '2023-12-31'),
('WINTER21', '2021-12-31'),
('WINTER23', '2023-12-31'),
('BIRTHDAY23', '2023-12-31'),
('BIRTHDAY15', '2015-12-31'),
('SUMMER20', '2020-12-31'),
('WINTER22', '2022-12-31'),
('BIRTHDAY21', '2021-12-31'),
('BIRTHDAY20', '2020-12-31'),
('BIRTHDAY12', '2012-12-31'),
('SUMMER23', '2023-12-31'),
('SUMMER16', '2016-12-31'),
('SUMMER19', '2019-12-31'),
('WINTER20', '2020-12-31'),
('SUMMER18', '2018-12-31');

create table CentaraThe1Account ( -- ddl
	CentaraThe1_no char(10) not null,
    Tier varchar(20) not null,
    Cen_Password varchar(20) not null,
    Cen_Point int not null,
    Register_date date not null,
    Promo_code varchar(10) not null,
    constraint PK_Centara primary key (CentaraThe1_no),
    constraint FK_PromoCentara foreign key (Promo_code)
    references PromotionCode(Promo_code)
);

INSERT INTO CentaraThe1Account (`CentaraThe1_no`, `Tier`,`Cen_Password`,`Cen_Point`,`Register_date`,`Promo_code`) VALUES
( '0777782714', 'Gold', 'sjsu2827',40093, '2020-04-11', 'SUMMER2022'),
( '9283736353', 'Silver', 'hus83632',8862, '2021-03-21', 'BIRTHDAY22'),
( '0077635212', 'Classic', 'dkdijed8898',223, '2022-04-30', 'WINTER2023'),
( '0293713422', 'Silver', 'prrpj8338',3455, '2022-01-12', 'WINTER21'),
( '0998372310', 'Classic', 'kdijj9783',234, '2023-04-19', 'WINTER23'),
( '0238366211', 'Classic', 'kdidjjd99',223, '2023-08-11', 'BIRTHDAY23'),
( '9778649900', 'Platinum Elite', 'mdkkdj9937',8005345, '2015-12-16', 'BIRTHDAY15'),
( '0088798665', 'Gold', 'dddijd337',43992, '2020-09-01', 'SUMMER20'),
( '0078954324', 'Classic', 'ooppr334',965, '2022-08-17', 'WINTER22'),
( '0087654876', 'Gold', '33uuyytt8',38553, '2021-02-22', 'BIRTHDAY21'),
( '0075345887', 'Silver', 'll00d8s',2234, '2020-03-28', 'SUMMER20'),
( '0088654677', 'Gold', '3jmd88ssd',68805, '2020-05-21', 'SUMMER20'),
( '8754900864', 'Platinum Elite', '99djj8spep',8477322, '2012-10-16', 'BIRTHDAY12'),
( '9980967543', 'Silver', 'kskdud8hsl',9485, '2020-02-03', 'BIRTHDAY20'),
( '9900765876', 'Gold', 'slknsi88s0',38429, '2020-04-11', 'BIRTHDAY20'),
( '0809865878', 'Silver', 'osncjs9f0',9374, '2023-01-01', 'SUMMER23'),
( '0800968765', 'Platinum Elite', 'skj88gs0',2083342, '2016-04-14', 'SUMMER16'),
( '8798622345', 'Gold', 'dljd99duus6',53434, '2019-09-13', 'SUMMER19'),
( '9736293746', 'Gold', 'kkuuoop245',34566, '2021-09-01', 'BIRTHDAY21'),
( '0293088373', 'Silver', 'skfjs00s7',6708, '2020-04-22', 'WINTER20'),
( '0280288373', 'Silver', 'HYFw995',9675, '2021-08-25', 'BIRTHDAY21'),
( '0900872523', 'Platinum Elite', 'skds883k0',7464974, '2018-12-08', 'SUMMER18'),
( '0038372584', 'Classic', 'jsjf882PP',847, '2022-03-19', 'BIRTHDAY22'),
( '0098476340', 'Platinum Elite', 'smkceklm',878432, '2020-06-22', 'WINTER20'),
( '0092746538', 'Classic', 'slklxapp',127, '2020-08-05', 'SUMMER20');

create table Customer (
	Cus_name varchar(50) not null,
    Citizen_ID char(13) not null,
    Email_address varchar(50) not null,
    Phone_number char(10) not null,
    Passport_no char(11),
    CentaraThe1_no char(10) not null,
    Payment_ID varchar(20),
    Birthdate date not null,
    constraint PK_Cus primary key (Cus_name, Citizen_ID),
	constraint FK_CentaraAccCus foreign key (CentaraThe1_no)
    references CentaraThe1Account(CentaraThe1_no)
    -- constraint FK_PayCus foreign key (Payment_ID)
    -- references Payment(Payment_ID)
);

INSERT INTO customer (Citizen_ID, Cus_name, Phone_number, Email_address, Passport_no, CentaraThe1_no, Payment_ID, Birthdate) VALUES
(1809902242071, 'Tring Robertson', '0805604824', 'tttring@hotmail.com', 'C03008905', '0777782714', '8827169208','1989-03-09'),
(1200901443526, 'Janny Huizinga', '0945489998', 'Jannywr@gmail.com', 'PA0940443', '9283736353', '083762539','1999-11-29'),
(1728073618361, 'Heinz Schloss', '0657894563', 'henntou@hotmail.com', '533827734', '0077635212', '928362839238','1993-01-13'),
(1200903736183, 'Suzanna Grafton', '0813586329', 'seuzsuza@hotmail.com', '098263543', '0293713422', '03938095853','1999-12-19'),
(1809973622836, 'Mark Bowser', '0447688964', 'markmarkker@hotmail.com', '783947563', '0998372310', '03938485039','1987-04-11'),
(1788236592834, 'Sidney Wesson', '0995735690', 'sssidneyy@gmail.com', 'C03028735', '0238366211', '93837203948','1994-01-02'),
(1200903615371, 'Georgee Papar', '0873443578', 'gogotttor@gmail.com', 'C03003805', '9778649900', '39748290584','1989-02-04'),
(1200973517352, 'Anney Smithson', '0908876342', 'Ananney@hotmail.com', '39948852', '0088798665', '93826290784','1995-10-16'),
(1100498263919, 'Juliette Brewer', '0678900745', 'jju154@hotmail.com', '34887321', '0078954324', '94857393744','1988-12-05'),
(1723840002947, 'Jaehyun Oblonski', '0548366740', 'Jaehyunlb@gmail.com', 'C03009817', '0087654876', '9383628403','1996-11-09'),
(1809907353827, 'Nichakul Park', '0868354683', 'nichak@hotmail.com', 'XN0092736', '0075345887', '00484775939','1999-09-17'),
(1100403837362, 'Jinnipa Suh', '0345678995', 'jinnilee@gmail.com', '987264242', '0088654677', '393826392839273','1987-03-22'),
(1728075637599, 'Gerald Robertson', '0657885495', 'grnalg@hotmail.com', 'C03007568', '8754900864', '9383629373927','1999-05-21'),
(1100482638221, 'Johnny Smith', '0643786542', 'Jjohnny@hotmail.com', 'C03098762', '9980967543', '5885847556505','2000-05-18'),
(3309966251828, 'Beam Jeong', '0768341631', 'beamJL@hotmail.com', 'C03002927', '9900765876','484638993744','1998-01-19'),
(1100484630484, 'Tim Warren', '0896753578', 'Timlkp@gmail.com', NULL, '0809865878', '38470048656','1999-02-07'),
(1182749386480, 'Jaemin Weston', '0808967756', 'jamin01@hotmail.com', '948659534', '0800968765', '004838837475','1988-03-03'),
(3101488261039, 'Jisung Olenga', '0536612326', 'jissuugg@gmail.com', 'C03005912', '8798622345', '746229273094736','1989-04-24'),
(1100463519377, 'Robert Smith', '0939397650', 'rbsmth@hotmail.com', 'XN0093744', '9736293746', '330039494022','1999-07-27'),
(1809972535188, 'Carlos Innugado', '0645436687', 'Carr657@gmail.com', '274759533', '0293088373', '020048047363454','1995-05-30'),
(5343090036782, 'Anton Jubilar', '0945579876', 'Aniupo@gmail.com', '948575354', '0280288373', '03947282727383','1998-01-25'),
(1200905628361, 'Georgette Schlumberg', '0804327854', 'Hittle@hotmail.comr', '948572395', '0900872523', '92827293736463','1994-12-30'),
(1100472638299, 'William Browning', '0987611345', 'WLLIm452@hotmail.com', '475858363', '0038372584', '004880285354','1994-09-19'),
(1100492727999, 'Annelise Paulus', '0856743326', 'Annenne@gmail.com', '023863053', '0098476340', '00048869977555','1996-01-17'),
(1100482639246, 'Chanyeol Richter', '0312678899', 'ChanYRK@gmail.com', NULL, '0092746538', '0048832079686','1999-02-19');


create table Reservation(
	Booking_no char(10) not null,
    Destination varchar(50) not null,
    Special_requests varchar(50),
    Reservation_date date not null,
    Total_num_of_customers int not null,
    Cus_name varchar(50) not null,
    Citizen_ID char(13) not null,
    constraint PK_Reservation primary key (Booking_no),
	constraint FK_CusRes foreign key (Cus_name, Citizen_ID) 
    references Customer(Cus_name, Citizen_ID)
);

INSERT INTO Reservation (Booking_no, Destination, Special_requests, Reservation_date, Total_num_of_customers, Cus_name, Citizen_ID) VALUES
('CTR5775239', 'Centra by Centara Hotel Mae Sot', 'Complimentary breakfast', '2023-12-05', '5', 'Tring Robertson', 1809902242071),
('CTR8865673', 'Centara Koh Chang Tropicana Resort', 'Breakfast in bed', '2022-02-04', '4', 'Janny Huizinga', 1200901443526),
('CTR7601347', 'Centra by Centara Hotel Bangkok Phra Nakhon', 'Late checkout', '2021-01-23', '2', 'Heinz Schloss', 1728073618361),
('CTR0953881', 'Maikhao Hotel managed by Centara', 'Extra towels', '2019-12-20', '4', 'Suzanna Grafton', 1200903736183),
('CTR5339017', 'Centara Ao Nang Beach Resort & Spa Krabi', NULL, '2023-03-07', '4', 'Mark Bowser', 1809973622836),
('CTR1441854', 'Centra by Centara Hotel Mae Sot', 'Spa package', '2023-01-12', '5', 'Sidney Wesson', 1788236592834),
('CTR0463245', 'Centara Grand Hotel Osaka', 'Room service', '2021-02-24', '2', 'Georgee Papar', 1200903615371),
('CTR3186835', 'Centara Korat', 'Wi-Fi access', '2022-12-16', '1', 'Anney Smithson', 1200973517352),
('CTR9176645', 'Centara Mirage Beach Resort Dubai', 'Early check-in', '2020-08-05', '5', 'Juliette Brewer', 1100498263919),
('CTR0127432', 'Centara Ayutthaya', 'City tour package', '2023-02-19', '4', 'Jaehyun Oblonski', 1723840002947),
('CTR5003476', 'Centara Ras Fushi Resort & Spa Maldives', 'Diving excursion', '2021-09-27', '5', 'Nichakul Park', 1809907353827),
('CTR3996541', 'Centara Grand at Central Plaza Ladprao Bangkok', 'Gym access', '2019-04-22', '3', 'Jinnipa Suh', 1100403837362),
('CTR0983751', 'Centara Koh Chang Tropicana Resort', 'Beachfront dinner', '2020-07-11', '2', 'Gerald Robertson', 1728075637599),
('CTR7607241', 'Centara Reserve Samui', 'Private pool', '2022-05-28', '3', 'Johnny Smith', 1100482638221),
('CTR6359903', 'Centara Grand at Central Plaza Ladprao Bangkok', 'Shopping voucher', '2023-11-14', '3', 'Beam Jeong', 3309966251828),
('CTR1160043', 'Centra by Centara Maris Resort Jomtien', NULL, '2021-01-27', '4', 'Tim Warren', 1100484630484),
('CTR2468513', 'Centara Grand Beach Resort & Villas Hua Hin', 'Golf package', '2020-01-02', '3', 'Jaemin Weston', 1182749386480),
('CTR1468359', 'Centara Azure Hotel Pattaya', 'Nightclub access', '2019-08-24', '3', 'Jisung Olenga', 3101488261039),
('CTR6735981', 'Centara Villas Samui', 'In-room massage', '2023-07-17', '6', 'Robert Smith', 1100463519377),
('CTR4273859', 'Centra by Centara Maris Resort Jomtien', 'Airport transfer', '2020-11-22', '2', 'Carlos Innugado', 1809972535188),
('CTR2358476', 'Centara West Bay Hotel & Residences Doha', 'Cultural tour', '2021-01-21', '5', 'Anton Jubilar', 5343090036782),
('CTR9162543', 'Centara Riverside Hotel Chiang Mai', 'Cooking class', '2022-03-04', '6', 'Georgette Schlumberg', 1200905628361),
('CTR8945213', 'Centra By Centara Muscat Dunes Hotel', 'Desert safari', '2023-05-29', '5', 'William Browning', 1100472638299),
('CTR7549812', 'Centra by Centara Phu Pano Resort Krabi', 'Island hopping', '2022-07-17', '3', 'Annelise Paulus', 1100492727999),
('CTR6534921', 'Centara Villas Samui', 'Yoga retreat', '2023-07-12', '6', 'Chanyeol Richter', 1100482639246);

create table Payment (
	Payment_ID varchar(20) not null,
	Amount decimal(8,2) not null,
    Paid_date date not null,
    Booking_no char(10) not null,
    constraint PK_Payment primary key (Payment_ID),
    constraint FK_ReservationPayment foreign key (Booking_no)
    references Reservation(Booking_no)
);

INSERT INTO `Payment` (`Payment_ID`, `Paid_date`,`Amount` , `Booking_no`) VALUES
('8827169208','2023-12-05', 13367.50 , 'CTR5775239' ),
('083762539','2022-02-04', 5560.35 ,'CTR8865673' ),
('928362839238','2021-01-23', 2780.00 , 'CTR7601347' ),
('03938095853','2019-12-20', 7680.50 , 'CTR0953881'),
('03938485039','2023-03-07', 12860.00 , 'CTR5339017'),
('93837203948','2023-01-12', 13500.00 , 'CTR1441854'),
('39748290584','2021-02-24', 1920.50 , 'CTR0463245'),
('93826290784','2022-12-16', 1890.00 , 'CTR3186835'),
('94857393744','2020-08-05', 15500.25 , 'CTR9176645'),
('9383628403','2023-02-19' , 11020.00 , 'CTR0127432'),
('00484775939','2021-09-27' , 15350.00 ,'CTR5003476'),
('393826392839273','2019-04-22' , 7760.50 ,'CTR3996541' ),
('9383629373927','2020-07-11' , 3240.00 , 'CTR0983751'),
('5885847556505','2022-05-28' , 7650.00 , 'CTR7607241'),
('484638993744','2023-11-14' , 9000.00 , 'CTR6359903'),
('38470048656','2021-01-27', 5580.50 , 'CTR1160043'),
('004838837475','2020-01-02' , 12900.00 , 'CTR2468513'),
('746229273094736','2019-08-24' , 4743.00 , 'CTR1468359'),
('330039494022','2023-07-17' , 13500.00 , 'CTR6735981'),
('020048047363454','2020-11-22' , 3650.00 , 'CTR4273859'),
('03947282727383','2021-01-21' , 14800.00 , 'CTR2358476'),
('92827293736463','2022-03-04' , 15800.00 , 'CTR9162543'),
('004880285354','2023-05-29' , 14560.50 , 'CTR8945213'),
('00048869977555','2022-07-17' , 4370.00 , 'CTR7549812'),
('0048832079686','2023-07-12' , 15700.00 , 'CTR6534921');

alter table Customer
add constraint FK_PayCus foreign key (Payment_ID)
references Payment(Payment_ID);

-- to update payment id in customer table 
-- UPDATE Customer c
-- JOIN Reservation r ON c.Cus_name = r.Cus_name
-- JOIN Payment p ON r.Booking_no = p.Booking_no
-- SET c.Payment_ID = p.Payment_ID;

create table Room (
	Room_no varchar(4) not null,
    RoomType varchar(20) not null,
    BedType varchar(20) not null,
    Price decimal(8,2) not null,
    Size decimal(5,2) not null,
    Scenery varchar(20) not null,
    constraint PK_Room primary key (Room_no)
);


create table WeChatPay (
	Payment_ID varchar(20) not null,
	WeChat_ID varchar(10) not null,
    constraint PK_WeChatPay primary key (Payment_ID),
    constraint FK_PayWeChatPay foreign key (Payment_ID)
    references Payment(Payment_ID)
);

create table Card(
	Payment_ID varchar(20) not null,
    CVV char(3) not null,
    Card_holder_name varchar(50) not null,
    Expiry_date date not null,
    constraint PK_Card primary key (Payment_ID),
    constraint FK_PayCard foreign key (Payment_ID)
    references Payment(Payment_ID)
);

create table Contain(
	Booking_no varchar(20) not null,
    Branch_name varchar(100) not null,
    Room_no	varchar(4) not null,
	constraint PK_Contain primary key (Booking_no, Branch_name, Room_no),
	constraint FK_ResevationContain foreign key (Booking_no)
    references Reservation(Booking_no),
    constraint FK_BranchContain foreign key (Branch_name)
    references Branch(Branch_name),
    constraint FK_RoomContain foreign key (Room_no)
    references Room(Room_no)
);

create table Make(
	Payment_ID varchar(20) not null,
    CentaraThe1_no char(10) not null,
    Cus_Name varchar(50) not null,
    Citizen_ID char(13) not null,
	constraint PK_Make primary key (Payment_ID, CentaraThe1_no, Cus_Name, Citizen_ID),
	constraint FK_PayMake foreign key (Payment_ID)
    references Payment(Payment_ID),
    constraint FK_CentaraMake foreign key (CentaraThe1_no)
    references CentaraThe1Account(CentaraThe1_no),
    constraint FK_CusMake foreign key (Cus_Name, Citizen_ID)
    references Customer(Cus_Name, Citizen_ID)
	-- constraint FK_CusMake2 foreign key (Citizen_ID)
    -- references Customer(Citizen_ID)
);

create table B_PhoneNumbers(
	Branch_name	varchar(100) not null,
    Branch_Phonenumber varchar(12) not null,
	constraint PK_BPhoneNumbers primary key (Branch_Phonenumber),
	constraint FK_BranchBPhone foreign key (Branch_name)
    references Branch(Branch_name)
);

create table Airport_transfer_service(
	Arrival_time datetime not null,
    Transfer_location varchar(50) not null,
    Vehicle varchar(20) not null,
    Plate_no nvarchar(7) not null,
    constraint PK_Airport primary key (Plate_no)
);
    
create table Booking(
	Cus_name varchar(50) not null,
	Citizen_ID char(13),
	Plate_no nvarchar(7) not null,
	constraint PK_Booking primary key (Cus_name, Citizen_ID, Plate_no),
	constraint FK_CusBook1 foreign key (Cus_name, Citizen_ID)
	references Customer(Cus_name, Citizen_ID),
	-- constraint FK_CusBook2 foreign key (Citizen_ID)
	-- references Customer(Citizen_ID),
	constraint FK_AirBook foreign key (Plate_no)
	references Airport_transfer_service(Plate_no)
);


INSERT INTO branch (`Branch_name`, `Branch_location`) VALUES
('Centara Grand Island Resort & Spa Maldives','Republic of Maldives'),
('Centara Ras Fushi Resort & Spa Maldives','Republic of Maldives'),
('Centara Grand Hotel Osaka','Japan'),
('Centara Ceysands Resort & Spa Sri Lanka','Sri Lanka'),
('Centara Muscat Hotel Oman','Oman'),
('Centra By Centara Muscat Dunes Hotel','Oman'),
('Al Hail Waves Hotel Managed By Centara','Oman'),
('Centara Mirage Resort Mui Ne','Vietnam'),
('Centara West Bay Hotel & Residences Doha','Qatar'),
('Centara Mirage Beach Resort Dubai','UAE'),
('Centara Grand Beach Resort & Villas Hua Hin', 'Thailand'),
('Centra by Centara Cha Am Beach Resort Hua Hin', 'Thailand'),
('Centara Ayutthaya','Thailand'),
('Centara Riverside Hotel Chiang Mai','Thailand'),
('Centara Grand at Central Plaza Ladprao Bangkok','Thailand'),
('Centara Grand at CentralWorld','Thailand'),
('Centra by Centara Hotel Bangkok Phra Nakhon','Thailand'),
('Centara Watergate Pavillion Hotel Bangkok','Thailand'),
('Centra by Centara Government Complex Hotel & Convention Centre Chaeng Watthana','Thailand'),
('Centara Hotel Hat Yai','Thailand'),
('ROUKH KIRI KHAO YAI','Thailand'),
('Centara Koh Chang Tropicana Resort','Thailand'),
('Centara Korat','Thailand'),
('Centara Grand Beach Resort & Villas, Krabi','Thailand'),
('Centra by Centara Phu Pano Resort Krabi','Thailand'),
('COSI Krabi Ao Nang Beach','Thailand'),
('Centara Anda Dhevi Resort and Spa Krabi','Thailand'),
('Centara Ao Nang Beach Resort & Spa Krabi','Thailand'),
('Centra by Centara Hotel Mae Sot','Thailand'),
('Centara Grand Mirage Beach Resort Pattaya','Thailand'),
('Centra by Centara Maris Resort Jomtien','Thailand'),
('Centara Sonrisa Residences and Suites Sriracha','Thailand'),
('Centara Pattaya Hotel','Thailand'),
('Centra by Centara Avenue Hotel Pattaya','Thailand'),
('Centara Nova Hotel Pattaya','Thailand'),
('COSI Pattaya Wong Amat Beach','Thailand'),
('Centara Azure Hotel Pattaya','Thailand'),
('Centara Grand Beach Resort Phuket','Thailand'),
('Centara Villas Phuket','Thailand'),
('Maikhao Hotel managed by Centara','Thailand'),
('Maikhao Dream Villa Resort and Spa, Centara Boutique Collection','Thailand'),
('Centara Kata Resort Phuket','Thailand'),
('Centara Karon Resort Phuket','Thailand'),
('Waterfront Suites Phuket by Centara','Thailand'),
('Centara Q Resort Rayong','Thailand'),
('Centara Reserve Samui','Thailand'),
('Centara Villas Samui','Thailand'),
('COSI Samui Chaweng Beach','Thailand'),
('Centara Chaan Talay Resort & Villas, Trat','Thailand'),
('Centara Udon','Thailand'),
('Centara Ubon','Thailand');

INSERT INTO `B_PhoneNumbers` (`Branch_name`, `Branch_Phonenumber`) VALUES
('Centara Grand Island Resort & Spa Maldives', '9604009999'),
('Centara Ras Fushi Resort & Spa Maldives', '9606643880'),
('Centara Grand Hotel Osaka', '81666169945'),
('Centara Ceysands Resort & Spa Sri Lanka', '94342275073'),
('Centara Muscat Hotel Oman', '96824236600'),
('Centra By Centara Muscat Dunes Hotel', '96824397500'),
('Al Hail Waves Hotel Managed By Centara', '96824429300'),
('Centara Mirage Resort Mui Ne', '842522222202'),
('Centara West Bay Hotel & Residences Doha', '97440095555'),
('Centara Mirage Beach Resort Dubai', '97145229999'),
('Centara Ayutthaya', '6627691234'),
('Centara Riverside Hotel Chiang Mai', '6653275300'),
('Centara Grand at Central Plaza Ladprao Bangkok', '6625411234'),
('Centara Grand at CentralWorld', '6621001234'),
('Centra by Centara Hotel Bangkok Phra Nakhon', '6620226336'),
('Centara Watergate Pavillion Hotel Bangkok', '6626251234'),
('Centra by Centara Government Complex Hotel & Convention Centre Chaeng Watthana', '6621431234'),
('Centara Hotel Hat Yai', '6674352222'),
('Centara Grand Beach Resort & Villas Hua Hin', '6632512021'),
('Centra by Centara Cha Am Beach Resort Hua Hin', '66325082349'),
('ROUKH KIRI KHAO YAI', '6644001300'),
('Centara Koh Chang Tropicana Resort', '6639557122'),
('Centara Korat', '6644251234'),
('Centara Grand Beach Resort & Villas, Krabi', '6675637789'),
('Centra by Centara Phu Pano Resort Krabi', '66756078889'),
('COSI Krabi Ao Nang Beach', '6675819999'),
('Centara Anda Dhevi Resort and Spa Krabi', '6675626222'),
('Centara Ao Nang Beach Resort & Spa Krabi', '6675815999'),
('Centra by Centara Hotel Mae Sot', '6655532601'),
('Centara Grand Mirage Beach Resort Pattaya', '6638301234'),
('Centra by Centara Maris Resort Jomtien', '6638103333'),
('Centara Sonrisa Residences and Suites Sriracha', '6638316888'),
('Centara Pattaya Hotel', '6638295999'),
('Centra by Centara Avenue Hotel Pattaya', '6638723900'),
('Centara Nova Hotel Pattaya', '6638725999'),
('COSI Pattaya Wong Amat Beach', '6638182345'),
('Centara Azure Hotel Pattaya', '6633083333'),
('Centara Grand Beach Resort Phuket', '6676201234'),
('Centara Villas Phuket', '6676372299'),
('Maikhao Hotel managed by Centara', '6676371388'),
('Maikhao Dream Villa Resort and Spa, Centara Boutique Collection', '6676371371'),
('Centara Kata Resort Phuket', '6676370300'),
('Centara Karon Resort Phuket', '66763962008'),
('Waterfront Suites Phuket by Centara', '6676396767'),
('Centara Q Resort Rayong', '6638657378'),
('Centara Reserve Samui', '6677230500'),
('Centara Villas Samui', '6677424020'),
('COSI Samui Chaweng Beach', '6621021232'),
('Centara Chaan Talay Resort & Villas, Trat', '663952156170'),
('Centara Udon', '6642343555'),
('Centara Ubon', '6645319556');

INSERT INTO Room (Room_no, RoomType, BedType, Price, Size, Scenery) VALUES
('101', 'Standard Room', 'Twin bed', 1450.00, 28.00, 'City view'),
('102', 'Standard Room', 'Single bed', 1560.00, 29.5, 'City view'),
('103', 'Superior Room', 'Twin bed', 1760.00, 34.00, 'Garden view'),
('104', 'Superior Room', 'Single bed', 2070.00, 34.00, 'Garden view'),
('105', 'Deluxe Room', 'Queen size bed', 7650.00, 68.00, 'Garden view'),
('106', 'Deluxe Room', 'King size bed', 9000.00, 68.00, 'Garden view'),
('107', 'Suite Room', 'King size bed', 12900.00, 72.00, 'Pool Ocean view'),
('108', 'Suite Room', 'King size bed', 13500.00, 75.00, 'Pool Ocean view'),
('109', 'Family Room', 'King size bed', 4743.00, 42.00, 'City view'),
('110', 'Family Room', 'King size bed', 5580.00, 47.00, 'City view'),

('201', 'Standard Room', 'Twin bed', 1650.00, 28.00, 'City view'),
('202', 'Standard Room', 'Single bed', 1760.00, 29.5, 'City view'),
('203', 'Superior Room', 'Twin bed', 1860.00, 34.00, 'Garden view'),
('204', 'Superior Room', 'Single bed', 2075.00, 34.00, 'Garden view'),
('205', 'Deluxe Room', 'Queen size bed', 7550.00, 68.00, 'Garden view'),
('206', 'Deluxe Room', 'King size bed', 9100.00, 68.00, 'Garden view'),
('207', 'Suite Room', 'King size bed', 12800.00, 72.00, 'Pool Ocean view'),
('208', 'Suite Room', 'King size bed', 13550.00, 75.00, 'Pool Ocean view'),
('209', 'Family Room', 'King size bed', 4745.00, 42.00, 'City view'),
('210', 'Family Room', 'King size bed', 5680.00, 47.00, 'City view'),

('301', 'Standard Room', 'Twin bed', 1750.00, 28.00, 'City view'),
('302', 'Standard Room', 'Single bed', 1860.00, 29.5, 'City view'),
('303', 'Superior Room', 'Twin bed', 2060.00, 34.00, 'Garden view'),
('304', 'Superior Room', 'Single bed', 2170.00, 34.00, 'Garden view'),
('305', 'Deluxe Room', 'Queen size bed', 7650.00, 68.00, 'Garden view'),
('306', 'Deluxe Room', 'King size bed', 9200.00, 68.00, 'Garden view'),
('307', 'Suite Room', 'King size bed', 12910.00, 72.00, 'Pool Ocean view'),
('308', 'Suite Room', 'King size bed', 13500.00, 75.00, 'Pool Ocean view'),
('309', 'Family Room', 'King size bed', 4750.00, 42.00, 'City view'),
('310', 'Family Room', 'King size bed', 5600.00, 47.00, 'City view'),

('401', 'Standard Room', 'Twin bed', 1750.00, 28.00, 'City view'),
('402', 'Standard Room', 'Single bed', 1860.00, 29.5, 'City view'),
('403', 'Superior Room', 'Twin bed', 2160.00, 34.00, 'Garden view'),
('404', 'Superior Room', 'Single bed', 2270.00, 34.00, 'Garden view'),
('405', 'Deluxe Room', 'Queen size bed', 7650.00, 68.00, 'Garden view'),
('406', 'Deluxe Room', 'King size bed', 9200.00, 68.00, 'Pool Ocean view'),
('407', 'Suite Room', 'King size bed', 13000.00, 72.00, 'Pool Ocean view'),
('408', 'Suite Room', 'King size bed', 13600.00, 75.00, 'Pool Ocean view'),
('409', 'Family Room', 'King size bed', 4843.00, 42.00, 'City view'),
('410', 'Family Room', 'King size bed', 5780.00, 47.00, 'City view'),

('501', 'Standard Room', 'Twin bed', 1850.00, 28.00, 'City view'),
('502', 'Standard Room', 'Single bed', 1960.00, 29.5, 'City view'),
('503', 'Superior Room', 'Twin bed', 2360.00, 34.00, 'Garden view'),
('504', 'Superior Room', 'Single bed', 2670.00, 34.00, 'Garden view'),
('505', 'Deluxe Room', 'Queen size bed', 7950.00, 68.00, 'Garden view'),
('506', 'Deluxe Room', 'King size bed', 9600.00, 68.00, 'Pool Ocean view'),
('507', 'Suite Room', 'King size bed', 12900.00, 75.00, 'Pool Ocean view'),
('508', 'Suite Room', 'King size bed', 13700.00, 77.00, 'Pool Ocean view'),
('509', 'Family Room', 'King size bed', 5043.00, 44.00, 'City view'),
('510', 'Family Room', 'King size bed', 5880.00, 48.00, 'City view'),

('601', 'Standard Room', 'Twin bed', 1950.00, 28.00, 'City view'),
('602', 'Standard Room', 'Single bed', 1965.00, 29.5, 'City view'),
('603', 'Superior Room', 'Twin bed', 2460.00, 34.00, 'Garden view'),
('604', 'Superior Room', 'Single bed', 2675.00, 34.00, 'Garden view'),
('605', 'Deluxe Room', 'Queen size bed', 7950.00, 68.00, 'Garden view'),
('606', 'Deluxe Room', 'King size bed', 9650.00, 68.00, 'Garden view'),
('607', 'Suite Room', 'King size bed', 12950.00, 76.00, 'Pool Ocean view'),
('608', 'Suite Room', 'King size bed', 13750.00, 78.00, 'Pool Ocean view'),
('609', 'Family Room', 'King size bed', 5050.00, 44.00, 'City view'),
('610', 'Family Room', 'King size bed', 5980.00, 48.00, 'Garden view'),

('701', 'Standard Room', 'Twin bed', 1970.00, 28.00, 'City view'),
('702', 'Standard Room', 'Single bed', 2560.00, 29.5, 'City view'),
('703', 'Superior Room', 'Twin bed', 2760.00, 34.00, 'Garden view'),
('704', 'Superior Room', 'Single bed', 2870.00, 34.00, 'Garden view'),
('705', 'Deluxe Room', 'Queen size bed', 8050.00, 68.00, 'Garden view'),
('706', 'Deluxe Room', 'King size bed', 9700.00, 68.00, 'Garden view'),
('707', 'Suite Room', 'King size bed', 13000.00, 78.00, 'Pool Ocean view'),
('708', 'Suite Room', 'King size bed', 13800.00, 79.00, 'Pool Ocean view'),
('709', 'Family Room', 'King size bed', 5143.00, 44.00, 'City view'),
('710', 'Family Room', 'King size bed', 6100.00, 50.00, 'Garden view'),

('801', 'Standard Room', 'Twin bed', 1970.00, 28.00, 'City view'),
('802', 'Standard Room', 'Single bed', 2565.00, 29.5, 'City view'),
('803', 'Superior Room', 'Twin bed', 2765.00, 34.00, 'Garden view'),
('804', 'Superior Room', 'Single bed', 2875.00, 34.00, 'Garden view'),
('805', 'Deluxe Room', 'Queen size bed', 8250.00, 68.00, 'Pool Ocean view'),
('806', 'Deluxe Room', 'King size bed', 9750.00, 68.00, 'Garden view'),
('807', 'Suite Room', 'King size bed', 13100.00, 79.00, 'Pool Ocean view'),
('808', 'Suite Room', 'King size bed', 13850.00, 80.00, 'Pool Ocean view'),
('809', 'Family Room', 'King size bed', 5243.00, 44.00, 'City view'),
('810', 'Family Room', 'King size bed', 6150.00, 50.00, 'City view'),

('901', 'Standard Room', 'Twin bed', 1975.00, 28.00, 'City view'),
('902', 'Standard Room', 'Single bed', 2570.00, 29.5, 'City view'),
('903', 'Superior Room', 'Twin bed', 2860.00, 34.00, 'Garden view'),
('904', 'Superior Room', 'Single bed', 2900.00, 34.00, 'Garden view'),
('905', 'Deluxe Room', 'Queen size bed', 8300.00, 68.00, 'Garden view'),
('906', 'Deluxe Room', 'King size bed', 9800.50, 68.00, 'Garden view'),
('907', 'Suite Room', 'King size bed', 13150.00, 81.00, 'Pool Ocean view'),
('908', 'Suite Room', 'King size bed', 13900.00, 82.00, 'Pool Ocean view'),
('909', 'Family Room', 'King size bed', 5343.00, 45.00, 'City view'),
('910', 'Family Room', 'King size bed', 6210.00, 51.00, 'City view'),

('1101', 'Standard Room', 'Twin bed', 2000.50, 28.00, 'City view'),
('1102', 'Standard Room', 'Single bed', 2580.00, 29.5, 'City view'),
('1103', 'Superior Room', 'Twin bed', 2880.00, 34.00, 'Garden view'),
('1104', 'Superior Room', 'Single bed', 2920.00, 34.00, 'Garden view'),
('1105', 'Deluxe Room', 'Queen size bed', 8350.00, 68.00, 'Pool Ocean view'),
('1106', 'Deluxe Room', 'King size bed', 9850.00, 68.00, 'Garden view'),
('1107', 'Suite Room', 'King size bed', 13200.00, 82.00, 'Pool Ocean view'),
('1108', 'Suite Room', 'King size bed', 14000.00, 84.00, 'Pool Ocean view'),
('1109', 'Family Room', 'King size bed', 5400.00, 45.00, 'Garden view'),
('1110', 'Family Room', 'King size bed', 6380.00, 52.00, 'City view'),

('1201', 'Standard Room', 'Twin bed', 2100.00, 28.00, 'City view'),
('1202', 'Standard Room', 'Single bed', 2600.00, 29.5, 'City view'),
('1203', 'Superior Room', 'Twin bed', 2900.00, 34.00, 'Garden view'),
('1204', 'Superior Room', 'Single bed', 2950.50, 34.00, 'Garden view'),
('1205', 'Deluxe Room', 'Queen size bed', 8400.00, 68.00, 'Pool Ocean view'),
('1206', 'Deluxe Room', 'King size bed', 9900.00, 68.00, 'Garden view'),
('1207', 'Suite Room', 'King size bed', 14300.00, 84.00, 'Pool Ocean view'),
('1208', 'Suite Room', 'King size bed', 15500.00, 85.00, 'Pool Ocean view'),
('1209', 'Family Room', 'King size bed', 4743.00, 47.00, 'Garden view'),
('1210', 'Family Room', 'King size bed', 6510.00, 54.00, 'City view');

INSERT INTO Airport_transfer_service (Arrival_time, Transfer_location, Vehicle, Plate_no) VALUES
('2022-11-17 08:30:00', 'Suvarnabhumi Airport', 'Sedan', 'กข1234'),
('2020-01-04 10:45:00', 'Don Mueang International Airport', 'SUV', 'คจ5678'),
('2022-09-12 13:15:00', 'Phuket International Airport', 'Van', 'ฅฆ9101'),
('2021-11-05 15:30:00', 'Chiang Mai International Airport', 'Limousine', 'งจ1212'),
('2021-10-21 17:45:00', 'Krabi International Airport', 'Sedan', 'ฉช1414'),
('2020-03-18 09:00:00', 'Suvarnabhumi Airport', 'SUV', 'บศ2121'),
('2023-05-31 11:15:00', 'Don Mueang International Airport', 'Van', 'ปส3434'),
('2021-11-18 13:45:00', 'Phuket International Airport', 'Limousine', 'พว5656'),
('2022-04-18 16:00:00', 'Chiang Mai International Airport', 'Sedan', 'ภส7878'),
('2022-03-05 18:15:00', 'Krabi International Airport', 'SUV', 'มล9090'),
('2020-06-19 08:30:00', 'Suvarnabhumi Airport', 'Van', 'ยม1111'),
('2019-10-11 10:45:00', 'Don Mueang International Airport', 'Limousine', 'รฟ1212'),
('2022-05-29 13:15:00', 'Phuket International Airport', 'Sedan', 'ลย1414'),
('2020-12-04 15:30:00', 'Chiang Mai International Airport', 'SUV', 'วด1616'),
('2022-12-20 17:45:00', 'Krabi International Airport', 'Van', 'สอ1818'),
('2021-04-23 09:00:00', 'Suvarnabhumi Airport', 'Limousine', 'ทห2020'),
('2021-01-25 11:15:00', 'Don Mueang International Airport', 'Sedan', 'ธา2222'),
('2020-09-03 13:45:00', 'Phuket International Airport', 'SUV', 'ศษ2323'),
('2020-11-12 16:00:00', 'Chiang Mai International Airport', 'Van', 'ยว2525'),
('2021-11-29 18:15:00', 'Krabi International Airport', 'Limousine', 'ขข2626');

INSERT INTO `Booking` (`Citizen_ID`, `Cus_name`, `Plate_no`) VALUES
(1728073618361, 'Heinz Schloss', 'ฉช1414'),
(1809973622836, 'Mark Bowser', 'ฅฆ9101'),
(1200973517352, 'Anney Smithson', 'ทห2020'),
(1728075637599, 'Gerald Robertson', 'วด1616'),
(1100482638221, 'Johnny Smith', 'ลย1414'),
(1182749386480, 'Jaemin Weston', 'คจ5678'),
(3101488261039, 'Jisung Olenga', 'ยม1111'),
(5343090036782, 'Anton Jubilar', 'ธา2222'),
(1200905628361, 'Georgette Schlumberg', 'มล9090'),
(1100472638299, 'William Browning', 'ปส3434'),
(1100492727999, 'Annelise Paulus', 'กข1234');

INSERT INTO `Contain` (`Booking_no`, `Branch_name`,`Room_no`) VALUES 
('CTR5775239', 'Centra by Centara Hotel Mae Sot', 507 ),
('CTR8865673', 'Centara Koh Chang Tropicana Resort', 109),
('CTR7601347' , 'Centra by Centara Hotel Bangkok Phra Nakhon', 702),
('CTR0953881' , 'Maikhao Hotel managed by Centara' , 710),
('CTR5339017' , 'Centara Ao Nang Beach Resort & Spa Krabi' , 606),
('CTR1441854' , 'Centra by Centara Hotel Mae Sot' , 307),
('CTR0463245' , 'Centara Grand Hotel Osaka' , 204),
('CTR3186835' , 'Centara Korat' , 202),
('CTR9176645' , 'Centara Mirage Beach Resort Dubai', 1207),
('CTR0127432' , 'Centara Ayutthaya' , 1106),
('CTR5003476' , 'Centara Ras Fushi Resort & Spa Maldives' ,908 ),
('CTR3996541' , 'Centara Grand at Central Plaza Ladprao Bangkok' , 605),
('CTR0983751' , 'Centara Koh Chang Tropicana Resort' , 704),
('CTR7607241' , 'Centara Reserve Samui', 105),
('CTR6359903', 'Centara Grand at Central Plaza Ladprao Bangkok' , 106),
('CTR1160043' , 'Centra by Centara Maris Resort Jomtien' , 209),
('CTR2468513' , 'Centara Grand Beach Resort & Villas Hua Hin' ,107 ),
('CTR1468359' , 'Centara Azure Hotel Pattaya' , 109),
('CTR6735981' , 'Centara Villas Samui' , 1108),
('CTR4273859' , 'Centra by Centara Maris Resort Jomtien', 1104),
('CTR2358476' , 'Centara West Bay Hotel & Residences Doha' , 708),
('CTR9162543' , 'Centara Riverside Hotel Chiang Mai' , 808),
('CTR8945213' , 'Centra By Centara Muscat Dunes Hotel' , 307),
('CTR7549812' , 'Centra by Centara Phu Pano Resort Krabi' ,209 ),
('CTR6534921' , 'Centara Villas Samui' , 1208);

INSERT INTO Make (Payment_ID, CentaraThe1_no, Cus_Name, Citizen_ID) VALUES
( '8827169208', '0777782714', 'Tring Robertson','1809902242071'),
( '083762539', '9283736353', 'Janny Huizinga','1200901443526'),
( '928362839238', '0077635212', 'Heinz Schloss','1728073618361'),
( '03938095853', '0293713422', 'Suzanna Grafton','1200903736183'),
( '03938485039', '0998372310', 'Mark Bowser','1809973622836'),
( '93837203948', '0238366211', 'Sidney Wesson','1788236592834'),
( '39748290584', '9778649900', 'Georgee Papar','1200903615371'),
( '93826290784', '0088798665', 'Anney Smithson','1200973517352'),
( '94857393744', '0078954324', 'Juliette Brewer','1100498263919'),
( '9383628403', '0087654876', 'Jaehyun Oblonski','1723840002947'),
( '00484775939', '0075345887', 'Nichakul Park','1809907353827'),
( '393826392839273', '0088654677', 'Jinnipa Suh','1100403837362'),
( '9383629373927', '8754900864', 'Gerald Robertson','1728075637599'),
( '5885847556505', '9980967543', 'Johnny Smith','1100482638221'),
( '484638993744', '9900765876', 'Beam Jeong','3309966251828'),
( '38470048656', '0809865878', 'Tim Warren','1100484630484'),
( '004838837475', '0800968765', 'Jaemin Weston','1182749386480'),
( '746229273094736', '8798622345', 'Jisung Olenga','3101488261039'),
( '330039494022', '9736293746', 'Robert Smith','1100463519377'),
( '020048047363454', '0293088373', 'Carlos Innugado','1809972535188'),
( '03947282727383', '0280288373', 'Anton Jubilar','5343090036782'),
( '92827293736463', '0900872523', 'Georgette Schlumberg','1200905628361'),
( '004880285354', '0038372584', 'William Browning','1100472638299'),
( '00048869977555', '0098476340', 'Annelise Paulus','1100492727999'),
( '0048832079686', '0092746538', 'Chanyeol Richter','1100482639246');

INSERT INTO WeChatPay (Payment_ID, WeChat_id) VALUES
('8827169208', 'WC12345678'),
('083762539', 'WC23456789'),
('928362839238', 'WC34567890'),
('03938095853', 'WC45678901'),
('03938485039', 'WC12345678'),
('93837203948', 'WC23456789'),
('39748290584', 'WC34567890'),
('93826290784', 'WC45678901'),
('94857393744', 'WC56789012'),
('9383628403', 'WC67890123'),
('00484775939', 'WC45678901');

INSERT INTO `Card` (`Payment_ID`, `CVV`, `Card_holder_name`, `Expiry_date`) VALUES
('393826392839273', '678', 'Jinnipa Suh', '2022-07-31'),
('9383629373927', '231', 'Gerald Robertson', '2021-03-31'),
('5885847556505', '025', 'Johnny Smith', '2022-09-30'),
('484638993744', '291', 'Beam Jeong', '2024-11-30'),
('38470048656', '315', 'Tim Warren', '2024-04-30'),
('004838837475', '094', 'Jaemin Weston', '2021-01-31'),
('746229273094736', '597', 'Jisung Olenga', '2020-08-31'),
('330039494022', '438', 'Robert Smith', '2024-07-31'),
('020048047363454', '696', 'Carlos Innugado', '2022-01-31'),
('03947282727383', '555', 'Anton Jubilar', '2021-10-31'),
('92827293736463', '562', 'Georgette Schlumberg', '2022-09-30'),
('004880285354', '401', 'William Browning', '2024-06-30'),
('00048869977555', '508', 'Annelise Paulus', '2022-12-31'),
('0048832079686', '971', 'Chanyeol Richter', '2024-07-31');





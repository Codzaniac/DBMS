Create table customer435
(CID number(10) primary key,
Cust_city varchar2(30),
Cust_first_name varchar2(30),
Cust_last_name varchar2(30),
Cust_phone number(10),
Cust_pincode number(10));

Create table product435
(pid number(10) primary key,
Prod_cost real,
Quantity number(10));

Create table employee435
(EID number(10) primary key,
Team_ID number(10),
Emp_address varchar2(30),
Emp_phno number(10),
Emp_pincode number(10),
Quantity_produced number(10));

Create table materials435
(MID number(10) primary key,
Material_cost real);

Create table suppliers435
(SSID number(10) primary key,
Supplier_name varchar2(30),
Supplier_address varchar2(30),
Supplier_phno number(10));

Create table decision
(CID number(10) ,
Pid number(10) ,
Primary key(CID,PID),
Foreign key(CID) references customer435(CID) on delete cascade,
Foreign key(pid) references product435(pid) on delete cascade);

Create table manufacture435
(MID number(10),
EID number(10),
pid number(10),
Primary key(MID,EID,pid),
Foreign key(MID) references materials435(MID) on delete cascade,
Foreign key(EID) references employee435(EID) on delete cascade,
Foreign key(pid) references product435(pid) on delete cascade);

Create table supply
(MID number(10),
SSID number(10),
Primary key(MID,SSID),
Foreign key(MID) references materials435(MID) on delete cascade,
Foreign key(SSID) references suppliers435(SSID) on delete cascade);
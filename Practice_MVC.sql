create table Course(
	id int not null primary key identity(1,1),
	course varchar(50) ,
	duration int 
	
)

create table Batch(
	id int not null primary key identity(1,1),
	batch varchar(50) ,
	year varchar(50) 

)
drop table Registration
create table Registration(
	id int not null primary key identity(1,1),
	firstName varchar(50),
	lastName varchar(50),
	cnic varchar(50),
	course_id int foreign key references Course(id),
	batch_id int foreign key references Batch(id),
	phone_no varchar(50)
)

create table UserI(
	id int not null primary key identity(1,1),
	firstName varchar(50),
	lastName varchar(50),
	username varchar(50),
	password varchar(50)
)
select * from UserI
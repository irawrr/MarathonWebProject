use marathonskills2016


create table `Position` (
	PositionId smallint auto_increment not null primary key,
	PositionName varchar(50) not null,
	PositionDescription varchar(1000),
	PayPeriod varchar(10) not null,
	Payrate decimal(10, 2) not null
)


create table `Staff` (
	StaffId int auto_increment not null primary key,
	FirstName varchar(80) not null,
	LastName varchar(80) not null,
	Email varchar(100) not null,
	DateOfBirth datetime not null,
	Gender varchar(10) not null,
	PositionId smallint not null,
	foreign key (PositionId) references `Position`(PositionId)
)


create table `Timesheet` (
	TimesheetId int auto_increment not null primary key,
	StaffId int not null,
	StartDateTime datetime,
	EndDateTime datetime,
	PayAmount decimal(10, 2),
	foreign key (StaffId) references Staff(StaffId)
)
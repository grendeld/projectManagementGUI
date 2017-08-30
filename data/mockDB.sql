use master
go
drop database mockDB;
go
create database mockDB;
go
use mockDB;
go

---Tables

create table employees(
  employeeID int identity (0,1) primary key NOT NULL,
  employeeFirstName varchar (25),
  empployeeLastName varchar (40),
  points int default '0'
)
go

create table projects(
  projectID int identity (0,1) primary key NOT NULL,
  projectName varchar (100),
  projectDetails varchar(255)
)
go

create table tasks(
  taskID int identity(0,1) primary key NOT NULL,
  taskName varchar(100),
  taskeEndDate datetime,
  projectID int foreign key references projects(projectID),
  employeeID int foreign key references employess(employeeID)
)
go

insert into employees (employeeFirstName, empployeeLastName, points) values
('Alan','Castell',0),('Bruce','Froebe',0),('Rich','Duclos',0),('Dan','Froome',0),('Justin','Bonneville',0),('James','Bell',0),('Chris','Bodnarchuk',100)
go

insert into projects (projectName, projectDetails) values
  ('Project Management App','Continually developing system that ties in Employee activity to Client solutions.')
  go

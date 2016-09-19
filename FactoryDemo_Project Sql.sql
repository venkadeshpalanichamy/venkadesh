create table studentmanagement(stdid int identity(1,1) primary key,stdname varchar(50),stdaddress varchar(100),stdbranch varchar(50))

insert into studentmanagement values('ravi','bangalore','ECE')
insert into studentmanagement values('RAMYA','CHENNAI','ISE')
insert into studentmanagement values('DIVYA','HYDERABAD','CIVIL')



create proc studentadd(@stdname varchar(20),@stdaddress varchar(20),@stdbranch varchar(50),@stdid int out)
as
begin
insert into studentmanagement values(@stdname,@stdaddress,@stdbranch)
set @stdid=@@IDENTITY
end

create proc studentupdate(@stdname varchar(20),@stdaddress varchar(20),@stdid int)
as
begin
update studentmanagement set stdname=@stdname,stdaddress=@stdaddress where stdid=@stdid
end

exec studentupdate 'swamy','bangalore',5 
create proc studentdelete(@stdid int)
as
begin
delete from studentmanagement where stdid=@stdid
end
create proc student_view
as
begin
select * from studentmanagement
end
delete from studentmanagement where stdid=7




select *from studentmanagement
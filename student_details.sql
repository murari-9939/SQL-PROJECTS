use mk1;
create table student_deatails(
name varchar(250),
subject varchar(250),
student_id int(10),
email varchar(250),
adress varchar(250),
fees int
);

insert into student_deatails values('murari', 'math', 1235, @1235, 'bihar',50000);
insert into student_deatails values('nand', 'commmerce', 1233, @12367, 'pantna',30000);
insert into student_deatails values('ravi', 'bio', 1563, @1267, 'db',30000);
insert into student_deatails values('rahul', 'arts', 1222, @1224, 'bhopal',30000);

# we are going to check the details of the table
select*from student_deatails;
#implementing some basic sql qeries
select * from student_deatails
where subject='math';

#seclecting multiples columns
select name,subject, student_id from student_deatails;

use mk1;

create table phone_details (name varchar(100), description varchar(255), availability char, price float, in_stock int, rating float);
insert into phone_details values ('Samsung 7x', 'phone with 8mp camera & voice recording', 'y', 3999.0, 3, 4.5);
insert into phone_details values ('sony 98x', 'phone with 32GB memory & Bluetooth', 'y', 6999.0, 5, 4);
insert into phone_details values ('realme 3', 'phone with 8mp camera & wifi calling', 'y', 4999.0, 10, 3.5);
insert into phone_details values ('one plus 4', 'phone with 64GB memory, wifi, Bluetooth, 16mp camera', 'y', 9999.0, 7, 4.5);

# display of projects
select name from phone_details;

#displaying of multiple columns
select description, price, in_stock, rating from phone_details;


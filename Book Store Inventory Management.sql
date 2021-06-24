use mk1;
#creating table
create table book_details (book_name varchar(100), author_name varchar(100), book_description varchar(255), price float, in_stock int, primary_keyword varchar(10), secondary_keyword varchar(10), rating float);

#inserting data
insert into book_details values ("Let us C", "Yashwant K.", "Learn C programming", 200.25, 3, "C", "software", 4.5);
insert into book_details values ("Let us C++", "Yashwant K.", "Learn C++ programming", 230.25, 5, "C++", "C", 4.5);
insert into book_details values ("Head first Java", "Kathy Sierra", "Learn Java programming", 330, 10, "Java", "JVM", 3.5);
insert into book_details values ("Java: The complete reference", "Mc Graw Hill", "7th edition, learn Java programming", 783, 4, "Java", "Javabeans", 4);
insert into book_details values ("Thinking in Java", "Bruce Eckel", "Java programming basics", 3000, 5, "Java", "JVM", 4.5);

#Now, let's select only Java books:
select * from book_details where primary_keyword like '%java%';

#Let’s select only those Java books that have a rating greater than 4:
select * from book_details where primary_keyword like '%java%' and rating > 4;

#Now, search for books based on author name:
select * from book_details where author_name like '%Yashwant%';

#To delete books from the database that have a rating less than 4, we should write the query as:
delete from book_details where rating < 4;

#creating stored procedure
DELIMITER //

CREATE PROCEDURE GetAllProducts()
BEGIN
	SELECT *  FROM book_details;
END //

DELIMITER ;
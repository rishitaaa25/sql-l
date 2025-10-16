-- data types in sql
-- numeric --> tinyint,smallint,mediumint,bigint(based on size)

create table tushar1 (id tinyint); 
insert into tushar1 values(10),(-9); -- -128 to 127  (1 byte) or 2**8
-- unsigned (keyword that do not allow negative no.)

-- float and double
create table tushar2 (id float,id1 double); 
insert into tushar2 values(10.123456789,10.123456789999);
select * from tushar2; -- will show monited value in id and id1 will have all values

-- precision and scale
create table tushar3 (id double(5,2)); 
insert into tushar3 values(10.123456789);
insert into tushar3 values(100.123456789);
insert into tushar3 values(100.123456789);
select * from tushar3; -- 5 is precision and 2 is scale
 
-- char and varchar
create table tushar4 (gender char(5)); -- fix value 5
insert into tushar4 values('abc');
insert into tushar4 values('abcdrf');
insert into tushar4 values('dhbhdbcehdkjd'); -- error
select * from tushar4;
-- char will have fix values and it will fix space in memory too...like in abc we had 3 alpha but memory is 5 size
-- also it will truncate the whitespaces from the last
insert into tushar4 values('abc           ');-- 3
select gender , char_length(gender) from tushar4; -- 3 truncated all white spaces
-- varchar
create table tushar5 (gender varchar(5)); -- it will truncate all white spaces untill size
insert into tushar5 values('abc   '); -- will keep upto 5 and then truncate
select gender , char_length(gender) from tushar6; -- 5

-- date time data type
CREATE TABLE tushar6 (
    my_date DATETIME
);
INSERT INTO tushar6 (my_date)
VALUES ('2025-12-12 10:30:45');
select * from tushar6;

-- timestamp
create table tushar7(date_today timestamp);
insert into tushar7 values ('2025-12-12');
select * from tushar7;









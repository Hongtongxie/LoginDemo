create table user(
	username varchar(50),
	password varchar(50)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
show databases;
show tables;
select * from user;
insert into user values("Tom","123");
drop table user;
create table shopcart(
    pname varchar(100),
    color varchar(100),
    size varchar(20),
    count int(2),
    price double(10,2)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
select * from shopcart;
insert into shopcart values('你好','1','1',1,1);
delete from shopcart where count = 1;
desc shopcart;
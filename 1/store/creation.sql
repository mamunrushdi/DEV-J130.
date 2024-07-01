create table store (
	article_id varchar(7) PRIMARY key,
	product_name varchar(50) not null,
	product_color varchar(20),
	prodcut_price int,
	product_left int,
	check(prodcut_price>0),
	check(LENGTH(article_id) = 7)
);

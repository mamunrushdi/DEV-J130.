create table orders_status(
	order_id int not null,
	article_id varchar(7) not null,
	price int not null,
	amount int not null,
	foreign key (order_id) references orders(order_id),
	foreign key (article_id) references store(article_id),
	primary key (order_id, article_id),
	check (amount > 0)
)
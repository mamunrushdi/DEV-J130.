create table orders (
	order_id int primary key,
	order_date TIMESTAMP not null,
	client_full_name varchar(100) not null,
	client_contact_number varchar(50),
	client_email varchar(50),
	shipment_address varchar(200),
	order_status char(1) not null,
	shipment_delivary_date TIMESTAMP,
	check(shipment_delivary_date is not null AND order_status = 'S')	
)
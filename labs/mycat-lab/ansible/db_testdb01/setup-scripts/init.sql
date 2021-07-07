create table person (
		id int auto_increment primary key,
		first_name varchar(64) not null,
		last_name varchar(64) not null,
		dob timestamp(3) null
) engine=InnoDB default charset=utf8mb4;

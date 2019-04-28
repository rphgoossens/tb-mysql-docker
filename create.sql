create table if not exists brewery (
	id bigint not null auto_increment,
	country varchar(255),
	name varchar(255) not null,
	primary key (id)
) engine=InnoDB;

create table if not exists beer (
	id bigint not null auto_increment,
	beer_type varchar(255) not null,
	name varchar(255) not null,
	brewery_id bigint,
	primary key (id),
	FOREIGN KEY (brewery_id)
	REFERENCES brewery(id)
) engine=InnoDB;

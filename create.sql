set foreign_key_checks = 0;
drop table if exists User;
drop table if exists Item;
drop table if exists Category;
drop table if exists Bid;



create table Item(
	itemID int,
	name VARCHAR(200),
	currently decimal(10,2),
	buy_price decimal(10,2),
	first_bid decimal(10,2),
	started datetime,
	ends datetime,
	userID VARCHAR(500),
	description text,
	primary key (itemID)
);

create table User(
	userID VARCHAR(50),
	rating int,
	location VARCHAR(50),
	country VARCHAR(50),
	primary key (userID)
);

create table Category(
        itemID int,
	category VARCHAR(50),
	primary key (itemID,category),
	foreign key (itemID)
	references Item(itemID)
);

create table Bid(
        itemID int,
	userID VARCHAR(50),
	time datetime,
	amount decimal(10,2),
	primary key (userID,itemID, time),
	foreign key (userID)
	references User(userID),
	foreign key (itemID)
	references Item(itemID)
);

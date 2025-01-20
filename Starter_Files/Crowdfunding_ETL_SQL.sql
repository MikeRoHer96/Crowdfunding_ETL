create table contacts (
  contact_id char(4) primary key
, first_name varchar(256)
, last_name varchar(256)
, email varchar(256)
);


create table category (
  category_id varchar(5) primary key
, category varchar(256)
);


create table subcategory (
  subcategory_id varchar(8) primary key
, subcategory varchar(256)
);


create table campaign (
  cf_id varchar(4) primary key
, contact_id char(4)
, company_name varchar(256)
, description varchar(256)
, goal float
, pledged float
, outcome varchar(10)
, backers_count int
, country char(2)
, currency char(3)
, launch_date date
, end_date date
, category_id varchar(5)
, subcategory_id varchar(8)
, foreign key (contact_id) references contacts (contact_id)
, foreign key (category_id) references category (category_id)
, foreign key (subcategory_id) references subcategory (subcategory_id)
);
CREATE TABLE catagory (
	catagory_id VARCHAR NOT NULL,
	catagory VARCHAR NOT NULL,
	PRIMARY KEY (catagory_id)
);

CREATE TABLE subcatagory (
	subcatagory_id VARCHAR NOT NULL,
	subcatagory VARCHAR NOT NULL,
	PRIMARY KEY (subcatagory_id)
);

CREATE TABLE contacts (
	contact_id int NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL,
	PRIMARY KEY (contact_id)
);

CREATE TABLE campaign (
	cf_id int NOT NULL,
	contact_id int NOT NULL,
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal NUMERIC NOT NULL,
	pledged NUMERIC NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count int NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	catagory_id VARCHAR NOT NULL,
	subcatagory_id VARCHAR NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (catagory_id) REFERENCES catagory (catagory_id),
	FOREIGN KEY (subcatagory_id) REFERENCES subcatagory (subcatagory_id)
);

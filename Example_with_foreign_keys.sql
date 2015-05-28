CREATE TABLE person (
	id INTEGER PRIMARY KEY,
	first_name TEXT,
	last_name TEXT,
	age INTEGER,
	address TEXT,
	zipcode INTEGER
);

CREATE TABLE pet (
	id INTEGER PRIMARY KEY,
	name TEXT,
	age INTEGER,
	breed TEXT,
	dead TEXT,
	owner INTEGER,
	FOREIGN KEY(owner) REFERENCES person(id)
);

CREATE TABLE car (
	id INTEGER PRIMARY KEY,
	model TEXT,
	year INTEGER,
	condition TEXT,
	owner INTEGER,
	FOREIGN KEY(owner) REFERENCES person(id)
);

-- CREATE TABLE
-- Query returned successfully in 52 msec.
CREATE TABLE People (
	ID INT PRIMARY KEY, 
	ODNB_ID INT, 
	displayName VARCHAR(100),
	prefix VARCHAR(10),
	firstName VARCHAR(40),
	lastName VARCHAR(40),
	suffix VARCHAR(40),
	title VARCHAR(100),
	gender VARCHAR(6),
	birthYearType VARCHAR(5),
	birthYear INT, 
	deathYearType VARCHAR(5),
	deathYear INT,
	CHECK (gender IN ('male', 'female', 'other'))
);

-- COPY 15801
-- Query returned successfully in 141 msec.
COPY People
FROM '/Users/jackie/Desktop/cse215_cp/FrancisBacon/SDFB_People.csv'
DELIMITER ','
CSV HEADER;

-- CREATE TABLE
-- Query returned successfully in 47 msec.
CREATE TABLE Relationships (
	ID INT PRIMARY KEY,
	person1ID INT REFERENCES People(ID),
	person2ID INT REFERENCES People(ID),
	startYearType VARCHAR(5),
	startYear INT,
	endYearType VARCHAR(5),
	endYear INT
);

-- COPY 19991
-- Query returned successfully in 765 msec.
COPY Relationships
FROM '/Users/jackie/Desktop/cse215_cp/FrancisBacon/SDFB_relationships_100000000_100020000.csv'
DELIMITER ','
CSV HEADER;

-- COPY 19994
-- Query returned successfully in 791 msec.
COPY Relationships
FROM '/Users/jackie/Desktop/cse215_cp/FrancisBacon/SDFB_relationships_100020001_100040000.csv'
DELIMITER ','
CSV HEADER;

-- COPY 19997
-- Query returned successfully in 800 msec.
COPY Relationships
FROM '/Users/jackie/Desktop/cse215_cp/FrancisBacon/SDFB_relationships_100040001_100060000.csv'
DELIMITER ','
CSV HEADER;

-- COPY 19997
-- Query returned successfully in 837 msec.
COPY Relationships
FROM '/Users/jackie/Desktop/cse215_cp/FrancisBacon/SDFB_relationships_100060001_100080000.csv'
DELIMITER ','
CSV HEADER;

-- COPY 19992
-- Query returned successfully in 791 msec.
COPY Relationships
FROM '/Users/jackie/Desktop/cse215_cp/FrancisBacon/SDFB_relationships_100080001_100100000.csv'
DELIMITER ','
CSV HEADER;

-- COPY 19994
-- Query returned successfully in 813 msec.
COPY Relationships
FROM '/Users/jackie/Desktop/cse215_cp/FrancisBacon/SDFB_relationships_100100001_100120000.csv'
DELIMITER ','
CSV HEADER;

-- COPY 19989
-- Query returned successfully in 785 msec.
COPY Relationships
FROM '/Users/jackie/Desktop/cse215_cp/FrancisBacon/SDFB_relationships_100120001_100140000.csv'
DELIMITER ','
CSV HEADER;

-- COPY 19995
-- Query returned successfully in 778 msec.
COPY Relationships
FROM '/Users/jackie/Desktop/cse215_cp/FrancisBacon/SDFB_relationships_100140001_100160000.csv'
DELIMITER ','
CSV HEADER;

-- COPY 10530
-- Query returned successfully in 413 msec.
COPY Relationships
FROM '/Users/jackie/Desktop/cse215_cp/FrancisBacon/SDFB_relationships_100160001_100180000.csv'
DELIMITER ','
CSV HEADER;

-- COPY 929
-- Query returned successfully in 83 msec.
COPY Relationships
FROM '/Users/jackie/Desktop/cse215_cp/FrancisBacon/SDFB_relationships_greater_than_100180000.csv'
DELIMITER ','
CSV HEADER;
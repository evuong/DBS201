-- *****************************************
-- Name: Edward Vuong
-- ID: 120246186
-- Date: Oct 3, 2018
-- Lab 04 DBS 201
-- Description: constraints
-- *****************************************

DROP TABLE PREMB26.SALES_REP;

DROP TABLE PREMB26.CUSTOMER;

CREATE TABLE	PREMB26.SALES_REP
(	SID			NUMERIC (2)		PRIMARY KEY CHECK (SID > 10),
	LAST		VARCHAR (20)	NOT NULL,
	FIRST		VARCHAR (20)	NOT NULL,
	STREET		VARCHAR (60)	NOT NULL,
	CITY		VARCHAR (20)	NOT NULL with default 'Toronto',
	PROV		CHAR (2)		NOT NULL with default 'ON',
	PCODE		CHAR (6)		NOT NULL,
	TOTAL_COMM	DECIMAL (7,2) 	CHECK (TOTAL_COMM >= 0.00),
	COMM_RATE	DECIMAL (3,2) 	CHECK (COMM_RATE BETWEEN 0.01 AND 0.05)
);

CREATE TABLE	PREMB26.CUSTOMER
(	CID				NUMERIC	PRIMARY KEY,
	LASTNAME		VARCHAR(20)	NOT NULL,
	FIRSTNAME		VARCHAR(20)	NOT NULL,
	STREET			VARCHAR(30)	NOT NULL,
	CITY			VARCHAR(20)	NOT NULL with default 'Mississauga',
	PROV			CHAR(2)	NOT NULL with default 'ON',
	PCODE			CHAR(6)	NOT NULL,
	BALANCE			DECIMAL(7,2),
	CREDITLIMIT		DECIMAL(7,0),
	SID				NUMERIC(2)	NOT NULL
);


INSERT INTO PREMB26.SALES_REP
VALUES (18, '10LAST', '10FIRST', '10 TEN STREET', 'TORONTO', 'ON','M9W3S4', 0.0, 0.01);

INSERT INTO PREMB26.SALES_REP
VALUES (21, '21LAST', '21FIRST', '21 ELEVEN STREET', 'TORONTO', 'ON','M9W3S4', 0.0, 0.02);

INSERT	INTO	PREMB26.SALES_REP
VALUES (12, '12LAST', '12FIRST', '12 TWELVE STREET', 'TORONTO', 'ON' ,'M9W3S4', 0.0, 0.02);

INSERT	INTO	PREMB26.SALES_REP
VALUES (11, '11LAST', '11FIRST20162', '11 ELEVEN STREET', 'TORONTO', 'ON','M9W3S4', 0.0, 0.02);

INSERT	INTO	PREMB26.SALES_REP
VALUES (28, '21LAST', '21FIRST', '21 TWO-1 STREET', 'TORONTO', 'ON','M9W3S4', 0.0, 0.03);

INSERT	INTO	PREMB26.SALES_REP
VALUES (22, '22LAST', '22FIRST', '22 TWO-2 STREET', 'TORONTO', 'ON','M9W3S4', 0.0, 0.05);

INSERT	INTO	PREMB26.SALES_REP
VALUES (13, '13LAST', '13FIRST', '13 TWELVE STREET', 'TORONTO', 'ON','M9W3S4', 0.0, 0.02);

INSERT INTO PREMB26.CUSTOMER
VALUES (661, 'Last 661', 'First Name 661', '70 Pond Street', 'Toronto', 'ON', 'M9W1A9', 1000, 1000, 21);
-- MISSED SINGLE QUOTE FOR 'ON', FIXED AND ADDDED.

INSERT INTO PREMB26.CUSTOMER
VALUES (662, 'Last 662', 'First Name 662', '662 Pond Street', 'Toronto', 'ON', 'M9W1A9', 550.00, 3000, 12);

INSERT INTO PREMB26.CUSTOMER
VALUES (663, 'Last 663','First Name 663','663 Pond Street', 'Toronto', 'ON', 'M9W1A9', 155.27, 1000, 12);

INSERT INTO PREMB26.CUSTOMER
VALUES (664, 'Last 664','First Name - 664','664 Pond Street', 'Toronto', 'ON', 'M9W1A9', 5000, 3000, 12);

INSERT INTO PREMB26.CUSTOMER
VALUES (665, 'Last 665','First Name - 665','665 Pond Street', 'Toronto', 'ON', 'M9W1A9', 1123.75, 10000, 22);

INSERT INTO PREMB26.CUSTOMER
VALUES (666, 'Vuong', 'Edward', '120246186', 'Toronto', 'ON', 'M9W1A6', 1123.75, 10000, 22);
--DELETED THIS ONE FOR THE LAB.

-- Q1
-- NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY, CHECK, DEFAULT, INDEX

-- Q2
-- Yes, you can add a constraint after the table is made.

-- Q3
ALTER TABLE PREMB26.CUSTOMER
ADD FOREIGN KEY (FK_FIRSTNAME) REFERENCES FIRSTNAME(SALES_REP);

-- Q4
SELECT * FROM PREMB26.CUSTOMER
WHERE CID > 600;







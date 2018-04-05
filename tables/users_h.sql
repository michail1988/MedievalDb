CREATE TABLE MED_USERS_H(
	FK_USER INTEGER NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	SURNAME VARCHAR(40) NOT NULL,
	EMAIL VARCHAR(40) NOT NULL,
	PASSWORD VARCHAR(40) NOT NULL,
	REGISTERDATE DATETIME NULL,
	UNIVERSITY VARCHAR(100) NULL,
	PHONE VARCHAR(20) NULL,
	CONGRESSROLE VARCHAR(5) NULL,
	SUBJECTDESCRIPTION VARCHAR(2000) NULL,
	CONTACTCOMMENTS VARCHAR(300) NULL,
	CONFIRMATION VARCHAR(1) NULL,
	PRIVILEGES VARCHAR(5) NULL,
	SUMMARY BLOB NULL,
	ABSTRACT BLOB NULL,
	PAPER_ACCEPTATION VARCHAR(1) NULL,
	PAYMENT VARCHAR(20) NULL,
	PAYMENT_ACCEPTED VARCHAR(1) NULL,
	ACADEMIC_TITLE VARCHAR(5) NULL,
	ACADEMIC_STATUS VARCHAR(5) NULL,
	MASTER VARCHAR(1) NULL,
	ENGINEER VARCHAR(1) NULL,
	FK_EDITOR VARCHAR(10) NULL,
	MODIFIED_DATE DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	PARTICIPATION VARCHAR(1) NULL,
	INVOICE VARCHAR(1) NULL,
	INVOICE_DATA VARCHAR(1000) NULL,
	ACCOMMODATION VARCHAR(1) NULL,
	ACCOMMODATION_FROM DATETIME NULL,
	ACCOMMODATION_TO DATETIME NULL,
	MEAL VARCHAR(1) NULL,
	LACTOSE_INTOLERANCE VARCHAR(1) NULL
);
create table MED_WORKSHOPS(
    TITLE varchar(100) not null,
    AUTHOR VARCHAR(32) NULL,
    CONTENT VARCHAR(3000) NULL, 
    CONTACT VARCHAR(3000) NULL,
  PLACE VARCHAR(3000) NULL,
    DATE DATETIME NULL,
    STATUS VARCHAR(1) NULL,
  FK_EDITOR VARCHAR(10) NULL
 );

ALTER TABLE MED_WORKSHOPS add column ID INTEGER  NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (ID);



INSERT INTO MED_WORKSHOPS (title, author, content, contact, place, date, status, fk_editor) VALUES('t', 'a', 'c', 'c', 'p', 'd', 'A', null)
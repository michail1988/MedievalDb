create table MED_NEWS_COMMENTS(
    FK_PARENTCOMMENT int null,
    FK_USER int not null,
    FK_POST int not null,
    COMMENT varchar(1000),
    DATE DATETIME NOT NULL,
    STATUS VARCHAR(1) NULL
 );

ALTER TABLE MED_NEWS_COMMENTS add column ID INTEGER  NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (ID);



--insert into MED_NEWS_COMMENTS (FK_PARENTCOMMENT, COMMENT, FK_POST, FK_USER, DATE, STATUS) VALUES (null, 'Moj przyczynek do dyskusji', 17, 1, NOW(), 'N');
--insert into MED_NEWS_COMMENTS (FK_PARENTCOMMENT, COMMENT, FK_POST, FK_USER, DATE, STATUS) VALUES (5, 'Koncz ten watek', 17, 3, NOW(), 'N');

      SELECT  c.comment as parentcomment, 
    c.date as parentdate, 
    c.id as parentid,
    (select concat(u.name, ' ', u.surname) FROM MED_USERS u where u.id = c.fk_user) as parentusername,
    c.status as parentconfirmed,
    cc.comment as comment, 
    cc.date as date, 
    cc.id as id,
    (select concat(u.name, ' ', u.surname) FROM MED_USERS u where u.id = cc.fk_user) as username,
    cc.status as confirmed
    FROM MED_NEWS_COMMENTS as c
    left JOIN MED_NEWS_COMMENTS as cc 
      ON cc.FK_PARENTCOMMENT = c.id and c.status = cc.status
  where c.FK_PARENTCOMMENT is null
               and c.status = 'Y' 
ORDER BY c.DATE ASC, cc.DATE ASC;
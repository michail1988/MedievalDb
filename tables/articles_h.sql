CREATE TABLE MED_ARTICLES_H(
FK_ARTICLE VARCHAR(10),
AUTHOR VARCHAR(32) NULL,
TITLE VARCHAR(32) NULL,
CONTENT VARCHAR(3000) NULL,
HEADLINE VARCHAR(3000) NULL,
FK_EDITOR VARCHAR(10) NULL,
MODIFIED_DATE DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
);

--TODO zmienic wymiary, dodac not null
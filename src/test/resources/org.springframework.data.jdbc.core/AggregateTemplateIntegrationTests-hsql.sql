CREATE TABLE LEGO_SET ( id BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1) PRIMARY KEY, NAME VARCHAR(30));
CREATE TABLE MANUAL ( id BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1) PRIMARY KEY, LEGO_SET BIGINT, CONTENT VARCHAR(2000));

ALTER TABLE MANUAL ADD FOREIGN KEY (LEGO_SET)
REFERENCES LEGO_SET(id);

CREATE TABLE ONE_TO_ONE_PARENT ( id BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1) PRIMARY KEY, content VARCHAR(30));
CREATE TABLE One_To_One_Child_No_Id (ONE_TO_ONE_PARENT INTEGER PRIMARY KEY, content VARCHAR(30));

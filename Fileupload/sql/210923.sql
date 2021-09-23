DROP TABLE paramdata;
CREATE TABLE paramdata (
    datano NUMBER PRIMARY KEY
    , title VARCHAR2(500)
    , data1 VARCHAR2(500)
    , data2 VARCHAR2(500)
);

DROP SEQUENCE paramdata_seq;
CREATE SEQUENCE paramdata_seq;

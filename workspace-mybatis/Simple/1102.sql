DESC logintb;
DROP TABLE logintb;
CREATE TABLE logintb (
    id VARCHAR2(50) PRIMARY KEY,
    pw VARCHAR2(50) NOT NULL,
    email VARCHAR2(200),
    phone VARCHAR2(50)
);
SELECT * FROM logintb;

commit;
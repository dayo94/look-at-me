
create table test_member (
    no NUMBER PRIMARY KEY,
    id VARCHAR2(100),
    pw VARCHAR2(100)
);

create SEQUENCE test_member_seq;

CREATE SEQUENCE test_member_seq
INCREMENT BY 1 
START WITH  1
MINVALUE 1
MAXVALUE 10000 
NOCYCLE
noCACHE;


select * from test_member;

INSERT INTO test_member (no, id, pw)
VALUES (test_member_seq.nextval,'asd','asd');


commit;
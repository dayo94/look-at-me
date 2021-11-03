drop table filetest;

create table filetest (
    fileno number PRIMARY KEY,
    title VARCHAR2(500),
    origin_name VARCHAR2(2000),
    stored_name VARCHAR2(2000) );
    
    drop SEQUENCE filetest_seq;
    create SEQUENCE filetest_seq;
    
    select * from filetest;
    
    commit;
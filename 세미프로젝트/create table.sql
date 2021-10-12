create table typeOfBoard(
    board_type varchar2(2) primary key,
    board_name varchar2(30)
);


create table attachment(
    attach_no number primary key,
    board_type varchar2(2),
    board_no number,
    original_file_name varchar2(100),
    stored_file_name varchar2(100),
    file_size number,
    file_date Date,
    FOREIGN KEY (board_type) REFERENCES typeOfBoard (board_type)
);



DROP SEQUENCE attachment_seq;
CREATE SEQUENCE attachment_seq;


CREATE TABLE user_info (
    user_no NUMBER PRIMARY KEY,
    user_email VARCHAR2(50), 
    user_password VARCHAR2(50),
    user_nickname VARCHAR2(50),
    user_point NUMBER,
    user_name VARCHAR2(20),
    user_birth DATE
);

create table attachment_profile( 
    profile_no number primary key,
    user_no number,
    profile_name varchar2(100),
    FOREIGN KEY (user_no) REFERENCES user_info (user_no)
);


create table official_board(
    official_board_no NUMBER PRIMARY KEY,
    board_type varchar2(2),
    user_no number,
    attach_no number,
    official_board_title varchar2(100),
    official_board_content varchar2(2000),
    official_board_date Date,
    official_board_vote NUMBER,
    FOREIGN KEY (board_type) REFERENCES typeOfBoard (board_type),
    FOREIGN KEY (user_no) REFERENCES user_info (user_no),
    FOREIGN KEY (attach_no) REFERENCES attachment (attach_no)
);

create table custom_board(
    custom_board_no number PRIMARY KEY,
    board_type varchar2(2),
    user_no number,
    attach_no number,
    custom_board_title varchar2(100),
    custom_board_content varchar2(2000),
    custom_board_date Date,
    custom_board_hit number,
    custom_board_vote NUMBER,
    FOREIGN KEY (board_type) REFERENCES typeOfBoard (board_type),
    FOREIGN KEY (user_no) REFERENCES user_info (user_no),
    FOREIGN KEY (attach_no) REFERENCES attachment (attach_no)
);



create table free_board(
    free_board_no number primary key,
    board_type varchar2(2),
    user_no number,
    attach_no number,
    free_board_title varchar2(100),
    free_board_content varchar2(2000),
    free_board_date Date,
    free_board_hit number,
    free_board_vote NUMBER,
    FOREIGN KEY (board_type) REFERENCES typeOfBoard (board_type),
    FOREIGN KEY (user_no) REFERENCES user_info (user_no),
    FOREIGN KEY (attach_no) REFERENCES attachment (attach_no)
);


create table official_reply(
    official_reply_no NUMBER PRIMARY KEY,
    official_board_no number,
    board_type varchar2(2),
    user_no number,
    official_reply_content varchar2(2000),
    official_reply_date Date,
    FOREIGN KEY (board_type) REFERENCES typeOfBoard (board_type),
    FOREIGN KEY (user_no) REFERENCES user_info (user_no),
    FOREIGN KEY (official_board_no) REFERENCES  official_board (official_board_no)
);


create table custom_reply(
    custom_reply_no NUMBER PRIMARY KEY,
    custom_board_no number,
    board_type varchar2(2),
    user_no number,
    custom_reply_content varchar2(2000),
    custom_reply_date Date,
    FOREIGN KEY (board_type) REFERENCES typeOfBoard (board_type),
    FOREIGN KEY (user_no) REFERENCES user_info (user_no),
    FOREIGN KEY (custom_board_no) REFERENCES  custom_board (custom_board_no)
);

create table free_reply(
    free_reply_no NUMBER PRIMARY KEY,
    free_board_no number,
    board_type varchar2(2),
    user_no number,
    free_reply_content varchar2(2000),
    free_reply_date Date,
    FOREIGN KEY (board_type) REFERENCES typeOfBoard (board_type),
    FOREIGN KEY (user_no) REFERENCES user_info (user_no),
    FOREIGN KEY (free_board_no) REFERENCES  free_board (free_board_no)

);

DROP SEQUENCE attachment_profile_seq;


CREATE SEQUENCE attachment_profile_seq
INCREMENT BY 1 
START WITH 1
MINVALUE 1 
MAXVALUE 100 
NOCYCLE 
noCACHE;

select * from attachment_profile;


CREATE SEQUENCE free_board_seq
INCREMENT BY 1 
START WITH 8
MINVALUE 8 
MAXVALUE 100 
NOCYCLE 
noCACHE;

drop sequence custom_board_seq; 

CREATE SEQUENCE custom_board_seq
INCREMENT BY 1 
START WITH 8
MINVALUE 8 
MAXVALUE 100 
NOCYCLE 
noCACHE;

commit;
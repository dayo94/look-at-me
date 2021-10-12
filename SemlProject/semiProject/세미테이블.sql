drop table user_info;
drop table custom_board;
drop table official_board;
drop table official_reply;
drop table custom_reply;
drop table attachment;
drop table typeOfBoard;
drop table free_board;
drop table free_reply;
drop table attachment_profile;




select * from user_info;
select * from custom_board;
select * from official_board;
select * from official_reply;
select * from custom_reply;
select * from attachment;
select * from typeOfBoard;
select * from free_board;
select * from free_reply;
select * from attachment_profile;



insert into user_info
VALUES (1,'aaa@gmail.com','aaa','aaa',1,'aaa',sysdate);

insert into user_info
VALUES (2,'bbb@gmail.com','bbb','bbb',2,'bbb',sysdate);

insert into user_info
VALUES (3,'ccc@gmail.com','ccc','ccc',3,'ccc',sysdate);

insert into user_info
VALUES (4,'ddd@gmail.com','ddd','ddd',4,'ddd',sysdate);

insert into user_info
VALUES (5,'eee@gmail.com','eee','eee',5,'eee',sysdate);

insert into user_info
VALUES (6,'fff@gmail.com','fff','fff',6,'fff',sysdate);

insert into user_info
VALUES (7,'ggg@gmail.com','ggg','ggg',7,'ggg',sysdate);




insert into typeOfBoard
VALUES ('fb','free_board');

insert into typeOfBoard
VALUES ('ob','official_board');

insert into typeOfBoard
VALUES ('cb','custom_board');





insert into official_board (official_board_no,board_type,user_no,official_board_title,official_board_content,
    official_board_date,official_board_vote)
VALUES (1,'ob',1,'�ȳ��ϼ���','�ݰ����ϴٴپƾƾƾƾ�',sysdate,1);

insert into official_board (official_board_no,board_type,user_no,official_board_title,official_board_content,
    official_board_date,official_board_vote)
VALUES (2,'ob',2,'�ȳ��ϼ���','�ݰ����ϴٴپƾƾƾƾ�',sysdate,2);


insert into official_board (official_board_no,board_type,user_no,official_board_title,official_board_content,
    official_board_date,official_board_vote)
VALUES (3,'ob',3,'�ȳ��ϼ���','�ݰ����ϴٴپƾƾƾƾ�',sysdate,3);


insert into official_board (official_board_no,board_type,user_no,official_board_title,official_board_content,
    official_board_date,official_board_vote)
VALUES (4,'ob',4,'�ȳ��ϼ���','�ݰ����ϴٴپƾƾƾƾ�',sysdate,4);


insert into official_board (official_board_no,board_type,user_no,official_board_title,official_board_content,
    official_board_date,official_board_vote)
VALUES (5,'ob',5,'�ȳ��ϼ���','�ݰ����ϴٴپƾƾƾƾ�',sysdate,5);


insert into official_board (official_board_no,board_type,user_no,official_board_title,official_board_content,
    official_board_date,official_board_vote)
VALUES (6,'ob',6,'�ȳ��ϼ���','�ݰ����ϴٴپƾƾƾƾ�',sysdate,6);


insert into official_board (official_board_no,board_type,user_no,official_board_title,official_board_content,
    official_board_date,official_board_vote)
VALUES (7,'ob',7,'�ȳ��ϼ���','�ݰ����ϴٴپƾƾƾƾ�',sysdate,7);



select * from custom_board;


insert into custom_board (custom_board_no,board_type,user_no,custom_board_title,custom_board_content,
    custom_board_date,custom_board_hit,custom_board_vote)
VALUES (1,'cb',1,'��������','�氡�氡',sysdate,1,1);

insert into custom_board (custom_board_no,board_type,user_no,custom_board_title,custom_board_content,
    custom_board_date,custom_board_hit,custom_board_vote)
VALUES (custom_board_seq.nextval,'cb',2,'Ŀ���ҵι�°','�ι��۾��ϴ�',sysdate,2,2);

insert into custom_board (custom_board_no,board_type,user_no,custom_board_title,custom_board_content,
    custom_board_date,custom_board_hit,custom_board_vote)
VALUES (2,'cb',2,'��������','�氡�氡',sysdate,2,2);


insert into custom_board (custom_board_no,board_type,user_no,custom_board_title,custom_board_content,
    custom_board_date,custom_board_hit,custom_board_vote)
VALUES (3,'cb',3,'��������','�氡�氡',sysdate,3,3);


insert into custom_board (custom_board_no,board_type,user_no,custom_board_title,custom_board_content,
    custom_board_date,custom_board_hit,custom_board_vote)
VALUES (4,'cb',4,'��������','�氡�氡',sysdate,4,4);


insert into custom_board (custom_board_no,board_type,user_no,custom_board_title,custom_board_content,
    custom_board_date,custom_board_hit,custom_board_vote)
VALUES (5,'cb',5,'��������','�氡�氡',sysdate,5,5);


insert into custom_board (custom_board_no,board_type,user_no,custom_board_title,custom_board_content,
    custom_board_date,custom_board_hit,custom_board_vote)
VALUES (6,'cb',6,'��������','�氡�氡',sysdate,6,6);


insert into custom_board (custom_board_no,board_type,user_no,custom_board_title,custom_board_content,
    custom_board_date,custom_board_hit,custom_board_vote)
VALUES (7,'cb',7,'��������','�氡�氡',sysdate,7,7);




insert into free_board (free_board_no,board_type,user_no,free_board_title,free_board_content,
    free_board_date,free_board_hit,free_board_vote)
VALUES (1,'fb',1,'��Ϳ��','�ű�ű�',sysdate,1,1);


insert into free_board (free_board_no,board_type,user_no,free_board_title,free_board_content,
    free_board_date,free_board_hit,free_board_vote)
VALUES (2,'fb',2,'��Ϳ��','�ű�ű�',sysdate,2,2);


insert into free_board (free_board_no,board_type,user_no,free_board_title,free_board_content,
    free_board_date,free_board_hit,free_board_vote)
VALUES (3,'fb',3,'��Ϳ��','�ű�ű�',sysdate,3,3);


insert into free_board (free_board_no,board_type,user_no,free_board_title,free_board_content,
    free_board_date,free_board_hit,free_board_vote)
VALUES (4,'fb',4,'��Ϳ��','�ű�ű�',sysdate,4,4);


insert into free_board (free_board_no,board_type,user_no,free_board_title,free_board_content,
    free_board_date,free_board_hit,free_board_vote)
VALUES (5,'fb',5,'��Ϳ��','�ű�ű�',sysdate,5,5);


insert into free_board (free_board_no,board_type,user_no,free_board_title,free_board_content,
    free_board_date,free_board_hit,free_board_vote)
VALUES (6,'fb',6,'��Ϳ��','�ű�ű�',sysdate,6,6);


insert into free_board (free_board_no,board_type,user_no,free_board_title,free_board_content,
    free_board_date,free_board_hit,free_board_vote)
VALUES (7,'fb',7,'��Ϳ��','�ű�ű�',sysdate,7,7);





insert into official_reply (official_reply_no,official_board_no,user_no,board_type,official_reply_content
,official_reply_date)
VALUES (1,1,1,'ob','�̰Դ���̾�',sysdate);


insert into official_reply (official_reply_no,official_board_no,user_no,board_type,official_reply_content
,official_reply_date)
VALUES (2,2,2,'ob','�̰Դ���̾�',sysdate);


insert into official_reply (official_reply_no,official_board_no,user_no,board_type,official_reply_content
,official_reply_date)
VALUES (3,3,3,'ob','�̰Դ���̾�',sysdate);


insert into official_reply (official_reply_no,official_board_no,user_no,board_type,official_reply_content
,official_reply_date)
VALUES (4,4,4,'ob','�̰Դ���̾�',sysdate);


insert into official_reply (official_reply_no,official_board_no,user_no,board_type,official_reply_content
,official_reply_date)
VALUES (5,5,5,'ob','�̰Դ���̾�',sysdate);


insert into official_reply (official_reply_no,official_board_no,user_no,board_type,official_reply_content
,official_reply_date)
VALUES (6,6,6,'ob','�̰Դ���̾�',sysdate);


insert into official_reply (official_reply_no,official_board_no,user_no,board_type,official_reply_content
,official_reply_date)
VALUES (7,7,7,'ob','�̰Դ���̾�',sysdate);




insert into custom_reply (custom_reply_no,custom_board_no,user_no,board_type,custom_reply_content,
    custom_reply_date)
values(1,1,1,'cb','����Դϴ�',sysdate);

insert into custom_reply (custom_reply_no,custom_board_no,user_no,board_type,custom_reply_content,
    custom_reply_date)
values(2,2,2,'cb','����Դϴ�',sysdate);

insert into custom_reply (custom_reply_no,custom_board_no,user_no,board_type,custom_reply_content,
    custom_reply_date)
values(3,3,3,'cb','����Դϴ�',sysdate);

insert into custom_reply (custom_reply_no,custom_board_no,user_no,board_type,custom_reply_content,
    custom_reply_date)
values(4,4,4,'cb','����Դϴ�',sysdate);

insert into custom_reply (custom_reply_no,custom_board_no,user_no,board_type,custom_reply_content,
    custom_reply_date)
values(5,5,5,'cb','����Դϴ�',sysdate);

insert into custom_reply (custom_reply_no,custom_board_no,user_no,board_type,custom_reply_content,
    custom_reply_date)
values(6,6,6,'cb','����Դϴ�',sysdate);

insert into custom_reply (custom_reply_no,custom_board_no,user_no,board_type,custom_reply_content,
    custom_reply_date)
values(7,7,7,'cb','����Դϴ�',sysdate);





insert into free_reply (free_reply_no,free_board_no,user_no,board_type,free_reply_content,
    free_reply_date)
values(1,1,1,'fb','�ڰԴ���̿�',sysdate);

insert into free_reply (free_reply_no,free_board_no,user_no,board_type,free_reply_content,
    free_reply_date)
values(2,2,2,'fb','�ڰԴ���̿�',sysdate);

insert into free_reply (free_reply_no,free_board_no,user_no,board_type,free_reply_content,
    free_reply_date)
values(3,3,3,'fb','�ڰԴ���̿�',sysdate);

insert into free_reply (free_reply_no,free_board_no,user_no,board_type,free_reply_content,
    free_reply_date)
values(4,4,4,'fb','�ڰԴ���̿�',sysdate);

insert into free_reply (free_reply_no,free_board_no,user_no,board_type,free_reply_content,
    free_reply_date)
values(5,5,5,'fb','�ڰԴ���̿�',sysdate);

insert into free_reply (free_reply_no,free_board_no,user_no,board_type,free_reply_content,
    free_reply_date)
values(6,6,6,'fb','�ڰԴ���̿�',sysdate);

insert into free_reply (free_reply_no,free_board_no,user_no,board_type,free_reply_content,
    free_reply_date)
values(7,7,7,'fb','�ڰԴ���̿�',sysdate);



insert into attachment (attach_no,original_file_name,stored_file_name,file_size,file_date)
values (1,'AAA','aaa',1,sysdate);


insert into attachment (attach_no,original_file_name,stored_file_name,file_size,file_date)
values (2,'BBB','bbb',2,sysdate);


insert into attachment (attach_no,original_file_name,stored_file_name,file_size,file_date)
values (3,'CCC','ccc',3,sysdate);


insert into attachment (attach_no,original_file_name,stored_file_name,file_size,file_date)
values (4,'DDD','ddd',4,sysdate);

insert into attachment (attach_no,original_file_name,stored_file_name,file_size,file_date)
values (5,'EEE','eee',5,sysdate);

insert into attachment (attach_no,original_file_name,stored_file_name,file_size,file_date)
values (6,'FFF','fff',6,sysdate);

insert into attachment (attach_no,original_file_name,stored_file_name,file_size,file_date)
values (7,'GGG','ggg',7,sysdate);


DROP SEQUENCE attachment_profile_seq;


CREATE SEQUENCE attachment_profile_seq
INCREMENT BY 1 
START WITH 1
MINVALUE 1 
MAXVALUE 100 
NOCYCLE 
noCACHE;

insert into attachment_profile(profile_no,user_no, profile_name)
values(attachment_profile_seq.nextval,1,'aaa');

insert into attachment_profile(profile_no,user_no, profile_name)
values(attachment_profile_seq.nextval,2,'bbb');

insert into attachment_profile(profile_no,user_no, profile_name)
values(attachment_profile_seq.nextval,3,'ccc');

insert into attachment_profile(profile_no,user_no, profile_name)
values(attachment_profile_seq.nextval,4,'ddd');

insert into attachment_profile(profile_no,user_no, profile_name)
values(attachment_profile_seq.nextval,5,'eee');

insert into attachment_profile(profile_no,user_no, profile_name)
values(attachment_profile_seq.nextval,6,'fff');

insert into attachment_profile(profile_no,user_no, profile_name)
values(attachment_profile_seq.nextval,7,'ggg');



select * from attachment_profile;


commit;

ROLLBACK;



select * from user_info
WHERE user_no = 1;


SELECT user_no, user_email, U.attach_no
    , A.original_file_name, A.stored_file_name
FROM user_info U, attachment A
WHERE U.attach_no = A.attach_no
    AND user_no = 1;
    
select c.board_type board_type, c.user_no user_no
from custom_board C, free_board F;
    

    

    
    

select * from custom_board where user_no = 2
union
select * from free_board where user_no = 2;


select * from free_board
where user_no = 1;


select * from custom_board union select * from free_board where user_no = 2;



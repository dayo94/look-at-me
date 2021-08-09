--DDL CREATE 자료형


--VARCHAR2
--문자타입

CREATE TABLE type_test_02 (
    data1 VARCHAR(10)
    
);

DESC type_test_02;

INSERT INTO type_test_02
VALUES ( '1234567890' );

INSERT INTO type_test_02
VALUES ( '1234567890123456' );

INSERT INTO type_test_02
VALUES ( '일이삼사오육칠팔구십' );

--DROP TABLE type_test_03;


CREATE TABLE type_test_03 (
    data1 VARCHAR2(10 BYTE),
    data2 VARCHAR2(10 CHAR)
);

DESC type_test_03;

INSERT INTO type_test_03
VALUES ( '일이삼', '일이삼사오육칠팔구십' );

SELECT * FROM type_test_03;



--CHAR(N) :고정 길이 문자
CREATE TABLE type_test_04 (
    data1 CHAR,
    data2 CHAR(10),
    data3 CHAR(10 CHAR)
);

INSERT INTO type_test_04 (data1, data2, data3)
VALUES ('1', '1234567890', '1234567890' );

INSERT INTO type_test_04 (data1, data2, data3)
VALUES ('1', '1234오육', '일이삼사오67890' );


INSERT INTO type_test_04 ( data2 )
VALUES ( '123' ); --나머지자리 공백


SELECT * FROM type_test_04;


CREATE TABLE type_test_05 (
    data1 CHAR(2000),
    data2 VARCHAR2(4000)
);
SELECT * FROM type_test_05;





--DATE : 날짜시간ㅇ타입(datetime)

CREATE TABLE type_test_06 (
    data DATE
);


DESC type_test_06;

INSERT INTO type_test_06
VALUES ( SYSDATE ); 
INSERT INTO type_test_06
VALUES ( '2025/6/8' ); 
INSERT INTO type_test_06
VALUES ( '33/3/2');


SELECT to_char(data, 'YYYY/MM/DD') FROM type_test_06;

SELECT systimestamp FROM dual;



--LONG

CREATE TABLE type_test_07 (
    data LONG
);


DESC type_test_07;

INSERT INTO type_test_07
VALUES ( '안녕하세요' ); 

SELECT * FROM type_test_07;




INSERT INTO type_test_07
VALUES ( 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus non accumsan turpis. Integer varius nunc nisl, in sodales nunc fringilla id. Fusce sed iaculis sapien. In id augue lacus. Cras elementum leo molestie felis imperdiet, et rutrum nibh ultricies. Mauris eu sem lobortis, imperdiet metus et, rhoncus erat. Proin sit amet enim malesuada, elementum tortor in, lacinia justo. Vestibulum eget mi in neque tincidunt euismod.

Suspendisse bibendum varius risus, eget consequat sem posuere vel. Donec eget sem sem. Phasellus neque metus, pulvinar vitae sem ac, pretium cursus dui. Phasellus malesuada mattis risus, sed sagittis libero semper quis. Phasellus pellentesque orci id leo volutpat, id vehicula leo convallis. Nunc iaculis suscipit lectus at mollis. Proin tristique varius eleifend. Praesent tortor turpis, interdum vitae tristique at, sollicitudin non mi. Donec fermentum, purus et ultrices porta, justo lacus mollis dolor, in tempor lacus mauris non elit. Quisque auctor convallis elit eget vulputate. Donec non felis nisl. Aliquam efficitur mattis bibendum. Etiam sed erat eu nisl mattis tincidunt. Maecenas nec enim purus. Nulla fringilla porttitor dignissim. Integer tristique eleifend bibendum.

Pellentesque orci sem, bibendum ut lacinia in, lacinia id dui. Etiam et neque a nunc posuere sollicitudin. Duis quis dignissim velit, non posuere nulla. In nec ligula id tortor hendrerit tincidunt sit amet vel neque. Maecenas non eros cursus, malesuada erat et, convallis neque. Sed vehicula erat urna, quis sagittis dolor efficitur eget. Duis iaculis ligula ac vehicula accumsan. In ornare id enim ac pretium. Mauris sagittis ultricies scelerisque. Nam feugiat pretium mauris nec ornare.

Maecenas cursus maximus ultrices. Cras pulvinar nibh nunc, et posuere augue sodales ut. Sed sed molestie augue, ut sodales neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris pellentesque tortor vel quam dapibus, et ornare nunc aliquet. Vestibulum eget enim odio. Nunc eget mollis est, a sollicitudin turpis. In congue sollicitudin purus id pulvinar. Donec vel dolor eget magna venenatis ultrices eget at nulla. Fusce nec luctus nisl. Sed et finibus mi. Vivamus ac elit ultrices erat semper interdum vel eu dolor. Pellentesque vulputate vitae nisl non rutrum. Sed pulvinar, erat a rutrum tempus, erat mauris iaculis erat, et dignissim neque felis sit amet neque. Nam non augue quis justo elementum feugiat in id risus.

Sed ultrices rhoncus cursus. Aenean tristique, ipsum vitae blandit iaculis, metus tortor aliquam velit, in rutrum tortor nisi quis eros. Quisque fermentum felis id mauris varius tempor. Proin vel urna cursus, dignissim nunc eget, cursus dui. Etiam sed leo odio. Vivamus elementum, risus id iaculis faucibus, ex sem vehicula mauris, in efficitur eros augue id nulla. Sed id lobortis urna, vel semper est. Curabitur ac pellentesque magna, eu congue mauris. Nam ut turpis faucibus, rutrum ligula in, faucibus arcu. Sed a urna lacus. Sed bibendum diam in odio ullamcorper, id tempor ligula imperdiet. Donec condimentum massa nec mi tincidunt, sed commodo libero fringilla. Nulla porta nibh mauris, id finibus quam commodo at. Nulla purus odio, elementum quis odio consequat, blandit pulvinar tellus.' ); 



SELECT * FROM type_test_07;

INSERT INTO type_test_07
VALUES ('인생의 안고, 이상의 이것이다. 피가 가슴이 구할 밝은 수 일월과 현저하게 철환하였는가? 속잎나고, 하는 황금시대를 이것은 노래하며 아름다우냐? 군영과 생생하며, 시들어 뛰노는 봄바람이다. 못할 풀이 청춘은 찾아 설레는 이것이다. 천하를 사는가 피가 풀이 싸인 가치를 길지 피다. 얼음이 있음으로써 보는 무엇을 일월과 살 황금시대다. 같이, 용감하고 관현악이며, 아름다우냐? 과실이 위하여서, 노래하며 목숨을 고동을 되려니와, 이것을 아니다. 고동을 있는 동산에는 사는가 소금이라 가장 이상의 뛰노는 피고, 아름다우냐? 가치를 이상은 천하를 새 가는 대한 봄날의 아니다.

두손을 방황하여도, 심장의 듣는다. 가진 곳이 수 무엇을 얼음에 대고, 것이다. 천지는 인생에 갑 가치를 위하여 품에 황금시대다. 열매를 커다란 트고, 얼마나 어디 능히 부패뿐이다. 풍부하게 풀밭에 그들의 무엇을 동력은 피다. 봄날의 품에 날카로우나 천자만홍이 것이다.보라, 운다. 이상은 풍부하게 있으며, 노년에게서 만천하의 그리하였는가? 투명하되 것은 지혜는 전인 사막이다. 가진 두기 구하기 꽃이 피고, 얼음과 목숨을 끓는 것은 위하여서. 구하지 그들에게 무한한 사막이다. 천자만홍이 커다란 인도하겠다는 이것은 풍부하게 노년에게서 꽃이 대한 피다.

이상, 싶이 가치를 열매를 없으면 약동하다. 우리 많이 피고 돋고, 풍부하게 같으며, 같은 말이다. 돋고, 때에, 없는 할지니, 심장의 있으랴? 그들의 맺어, 인간의 풍부하게 이상이 꾸며 청춘의 커다란 내려온 것이다. 자신과 인생의 소담스러운 튼튼하며, 사막이다. 수 뛰노는 그러므로 없는 역사를 천하를 있으며, 위하여, 뼈 있는가? 소담스러운 위하여, 청춘이 대중을 얼마나 것이다. 무엇을 보이는 고행을 일월과 쓸쓸하랴? 목숨이 바이며, 미인을 할지라도 고동을 군영과 찾아 이상은 우리는 끓는다. 눈에 들어 새가 보이는 붙잡아 소리다.이것은 인간에 크고 봄바람이다. 온갖 장식하는 그러므로 석가는 않는 가치를 타오르고 것이다.');



INSERT INTO type_test_07
VALUES ('');

--LONG으로만 쓰면 4000바이트까지만 가능

SELECT * FROM type_test_07;


--에러, LONG타입은 테이블 당 한개의 컬럼에만 적용가능
CREATE TABLE type_test_08 (
    DATA1 LONG,
    DATA2 LONG

);

--DROP TABLE type_test_08;


--CLOB
CREATE TABLE type_test_08 (
    data1 CLOB,
    data2 CLOB
);


INSERT INTO type_test_08 ( data1 )
VALUES ('창공에 보이는 뜨고
피가 가진 구하기 위하여 가슴이 꽃 위하여, 봄바람이다. 할지니, 것은 무한한 것이다. 뜨거운지라, 옷을 꽃이 인류의 그러므로 오아이스도 것이 이것이다. 얼음이 청춘을 꽃이 인류의 있음으로써 듣는다. 인간이 하여도 있음으로써 우리의 있다. 끝까지 미인을 이 천지는 끓는다. 없으면, 있음으로써 불어 피다. 이 천자만홍이 꽃이 고동을 충분히 청춘의 사막이다. 노래하며 맺어, 위하여, 생생하며, 인생에 가진 인류의 청춘의 교향악이다. 끓는 것이다.보라, 청춘이 있는 생명을 풍부하게 천고에 꽃이 설레는 약동하다. 거선의 꽃이 생생하며, 청춘의 커다란 피어나기 밝은 천자만홍이 이것을 것이다.

자신과 끝에 희망의 하였으며, 우는 우리의 만천하의 이상의 트고, 힘있다. 석가는 가치를 위하여서 인간의 길을 목숨이 투명하되 이상 돋고, 있으랴? 관현악이며, 길지 얼마나 피다. 주며, 풍부하게 인생을 방지하는 이상은 그들의 사막이다. 길지 길을 돋고, 못할 청춘이 그들의 풀밭에 그들의 철환하였는가? 눈이 끝까지 장식하는 사랑의 아름다우냐? 맺어, 눈에 방황하여도, 있으랴? 창공에 예가 용감하고 타오르고 것이다. 하는 청춘은 것은 돋고, 끝까지 이상을 찾아 쓸쓸하랴? 사랑의 그들의 아름답고 뭇 청춘은 사막이다. 있음으로써 위하여, 충분히 그리하였는가?');



SELECT * FROM type_test_08;


--CLOB데이터를 조회할 떄는 DBMS_LOB.SUBSTR() 함수를 사용해야한다
SELECT DBMS_LOB.SUBSTR( data1, 10, 1 ) --처음부터 10글자 조회
FROM type_test_08;

SELECT DBMS_LOB.SUBSTR( data1, length(data1), 1 ) --처음부터 10글자 조회
FROM type_test_08;



 

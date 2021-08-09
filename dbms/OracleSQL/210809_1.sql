--DDL CREATE �ڷ���


--VARCHAR2
--����Ÿ��

CREATE TABLE type_test_02 (
    data1 VARCHAR(10)
    
);

DESC type_test_02;

INSERT INTO type_test_02
VALUES ( '1234567890' );

INSERT INTO type_test_02
VALUES ( '1234567890123456' );

INSERT INTO type_test_02
VALUES ( '���̻�����ĥ�ȱ���' );

--DROP TABLE type_test_03;


CREATE TABLE type_test_03 (
    data1 VARCHAR2(10 BYTE),
    data2 VARCHAR2(10 CHAR)
);

DESC type_test_03;

INSERT INTO type_test_03
VALUES ( '���̻�', '���̻�����ĥ�ȱ���' );

SELECT * FROM type_test_03;



--CHAR(N) :���� ���� ����
CREATE TABLE type_test_04 (
    data1 CHAR,
    data2 CHAR(10),
    data3 CHAR(10 CHAR)
);

INSERT INTO type_test_04 (data1, data2, data3)
VALUES ('1', '1234567890', '1234567890' );

INSERT INTO type_test_04 (data1, data2, data3)
VALUES ('1', '1234����', '���̻���67890' );


INSERT INTO type_test_04 ( data2 )
VALUES ( '123' ); --�������ڸ� ����


SELECT * FROM type_test_04;


CREATE TABLE type_test_05 (
    data1 CHAR(2000),
    data2 VARCHAR2(4000)
);
SELECT * FROM type_test_05;





--DATE : ��¥�ð���Ÿ��(datetime)

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
VALUES ( '�ȳ��ϼ���' ); 

SELECT * FROM type_test_07;




INSERT INTO type_test_07
VALUES ( 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus non accumsan turpis. Integer varius nunc nisl, in sodales nunc fringilla id. Fusce sed iaculis sapien. In id augue lacus. Cras elementum leo molestie felis imperdiet, et rutrum nibh ultricies. Mauris eu sem lobortis, imperdiet metus et, rhoncus erat. Proin sit amet enim malesuada, elementum tortor in, lacinia justo. Vestibulum eget mi in neque tincidunt euismod.

Suspendisse bibendum varius risus, eget consequat sem posuere vel. Donec eget sem sem. Phasellus neque metus, pulvinar vitae sem ac, pretium cursus dui. Phasellus malesuada mattis risus, sed sagittis libero semper quis. Phasellus pellentesque orci id leo volutpat, id vehicula leo convallis. Nunc iaculis suscipit lectus at mollis. Proin tristique varius eleifend. Praesent tortor turpis, interdum vitae tristique at, sollicitudin non mi. Donec fermentum, purus et ultrices porta, justo lacus mollis dolor, in tempor lacus mauris non elit. Quisque auctor convallis elit eget vulputate. Donec non felis nisl. Aliquam efficitur mattis bibendum. Etiam sed erat eu nisl mattis tincidunt. Maecenas nec enim purus. Nulla fringilla porttitor dignissim. Integer tristique eleifend bibendum.

Pellentesque orci sem, bibendum ut lacinia in, lacinia id dui. Etiam et neque a nunc posuere sollicitudin. Duis quis dignissim velit, non posuere nulla. In nec ligula id tortor hendrerit tincidunt sit amet vel neque. Maecenas non eros cursus, malesuada erat et, convallis neque. Sed vehicula erat urna, quis sagittis dolor efficitur eget. Duis iaculis ligula ac vehicula accumsan. In ornare id enim ac pretium. Mauris sagittis ultricies scelerisque. Nam feugiat pretium mauris nec ornare.

Maecenas cursus maximus ultrices. Cras pulvinar nibh nunc, et posuere augue sodales ut. Sed sed molestie augue, ut sodales neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris pellentesque tortor vel quam dapibus, et ornare nunc aliquet. Vestibulum eget enim odio. Nunc eget mollis est, a sollicitudin turpis. In congue sollicitudin purus id pulvinar. Donec vel dolor eget magna venenatis ultrices eget at nulla. Fusce nec luctus nisl. Sed et finibus mi. Vivamus ac elit ultrices erat semper interdum vel eu dolor. Pellentesque vulputate vitae nisl non rutrum. Sed pulvinar, erat a rutrum tempus, erat mauris iaculis erat, et dignissim neque felis sit amet neque. Nam non augue quis justo elementum feugiat in id risus.

Sed ultrices rhoncus cursus. Aenean tristique, ipsum vitae blandit iaculis, metus tortor aliquam velit, in rutrum tortor nisi quis eros. Quisque fermentum felis id mauris varius tempor. Proin vel urna cursus, dignissim nunc eget, cursus dui. Etiam sed leo odio. Vivamus elementum, risus id iaculis faucibus, ex sem vehicula mauris, in efficitur eros augue id nulla. Sed id lobortis urna, vel semper est. Curabitur ac pellentesque magna, eu congue mauris. Nam ut turpis faucibus, rutrum ligula in, faucibus arcu. Sed a urna lacus. Sed bibendum diam in odio ullamcorper, id tempor ligula imperdiet. Donec condimentum massa nec mi tincidunt, sed commodo libero fringilla. Nulla porta nibh mauris, id finibus quam commodo at. Nulla purus odio, elementum quis odio consequat, blandit pulvinar tellus.' ); 



SELECT * FROM type_test_07;

INSERT INTO type_test_07
VALUES ('�λ��� �Ȱ�, �̻��� �̰��̴�. �ǰ� ������ ���� ���� �� �Ͽ��� �����ϰ� öȯ�Ͽ��°�? ���ٳ���, �ϴ� Ȳ�ݽô븦 �̰��� �뷡�ϸ� �Ƹ��ٿ��? ������ �����ϸ�, �õ�� �ٳ�� ���ٶ��̴�. ���� Ǯ�� û���� ã�� ������ �̰��̴�. õ�ϸ� ��°� �ǰ� Ǯ�� ���� ��ġ�� ���� �Ǵ�. ������ �������ν� ���� ������ �Ͽ��� �� Ȳ�ݽô��. ����, �밨�ϰ� �������̸�, �Ƹ��ٿ��? ������ ���Ͽ���, �뷡�ϸ� ����� ���� �Ƿ��Ͽ�, �̰��� �ƴϴ�. ���� �ִ� ���꿡�� ��°� �ұ��̶� ���� �̻��� �ٳ�� �ǰ�, �Ƹ��ٿ��? ��ġ�� �̻��� õ�ϸ� �� ���� ���� ������ �ƴϴ�.

�μ��� ��Ȳ�Ͽ���, ������ ��´�. ���� ���� �� ������ ������ ���, ���̴�. õ���� �λ��� �� ��ġ�� ���Ͽ� ǰ�� Ȳ�ݽô��. ���Ÿ� Ŀ�ٶ� Ʈ��, �󸶳� ��� ���� ���л��̴�. ǳ���ϰ� Ǯ�翡 �׵��� ������ ������ �Ǵ�. ������ ǰ�� ��ī�ο쳪 õ�ڸ�ȫ�� ���̴�.����, ���. �̻��� ǳ���ϰ� ������, ��⿡�Լ� ��õ���� �׸��Ͽ��°�? �����ϵ� ���� ������ ���� �縷�̴�. ���� �α� ���ϱ� ���� �ǰ�, ������ ����� ���� ���� ���Ͽ���. ������ �׵鿡�� ������ �縷�̴�. õ�ڸ�ȫ�� Ŀ�ٶ� �ε��ϰڴٴ� �̰��� ǳ���ϰ� ��⿡�Լ� ���� ���� �Ǵ�.

�̻�, ���� ��ġ�� ���Ÿ� ������ �ൿ�ϴ�. �츮 ���� �ǰ� ����, ǳ���ϰ� ������, ���� ���̴�. ����, ����, ���� ������, ������ ������? �׵��� �ξ�, �ΰ��� ǳ���ϰ� �̻��� �ٸ� û���� Ŀ�ٶ� ������ ���̴�. �ڽŰ� �λ��� �Ҵ㽺���� ưư�ϸ�, �縷�̴�. �� �ٳ�� �׷��Ƿ� ���� ���縦 õ�ϸ� ������, ���Ͽ�, �� �ִ°�? �Ҵ㽺���� ���Ͽ�, û���� ������ �󸶳� ���̴�. ������ ���̴� ������ �Ͽ��� �����Ϸ�? ����� ���̸�, ������ ������ ���� ������ ã�� �̻��� �츮�� ���´�. ���� ��� ���� ���̴� ����� �Ҹ���.�̰��� �ΰ��� ũ�� ���ٶ��̴�. �°� ����ϴ� �׷��Ƿ� ������ �ʴ� ��ġ�� Ÿ������ ���̴�.');



INSERT INTO type_test_07
VALUES ('');

--LONG���θ� ���� 4000����Ʈ������ ����

SELECT * FROM type_test_07;


--����, LONGŸ���� ���̺� �� �Ѱ��� �÷����� ���밡��
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
VALUES ('â���� ���̴� �߰�
�ǰ� ���� ���ϱ� ���Ͽ� ������ �� ���Ͽ�, ���ٶ��̴�. ������, ���� ������ ���̴�. �߰ſ�����, ���� ���� �η��� �׷��Ƿ� �����̽��� ���� �̰��̴�. ������ û���� ���� �η��� �������ν� ��´�. �ΰ��� �Ͽ��� �������ν� �츮�� �ִ�. ������ ������ �� õ���� ���´�. ������, �������ν� �Ҿ� �Ǵ�. �� õ�ڸ�ȫ�� ���� ���� ����� û���� �縷�̴�. �뷡�ϸ� �ξ�, ���Ͽ�, �����ϸ�, �λ��� ���� �η��� û���� ������̴�. ���� ���̴�.����, û���� �ִ� ������ ǳ���ϰ� õ�� ���� ������ �ൿ�ϴ�. �ż��� ���� �����ϸ�, û���� Ŀ�ٶ� �Ǿ�� ���� õ�ڸ�ȫ�� �̰��� ���̴�.

�ڽŰ� ���� ����� �Ͽ�����, ��� �츮�� ��õ���� �̻��� Ʈ��, ���ִ�. ������ ��ġ�� ���Ͽ��� �ΰ��� ���� ����� �����ϵ� �̻� ����, ������? �������̸�, ���� �󸶳� �Ǵ�. �ָ�, ǳ���ϰ� �λ��� �����ϴ� �̻��� �׵��� �縷�̴�. ���� ���� ����, ���� û���� �׵��� Ǯ�翡 �׵��� öȯ�Ͽ��°�? ���� ������ ����ϴ� ����� �Ƹ��ٿ��? �ξ�, ���� ��Ȳ�Ͽ���, ������? â���� ���� �밨�ϰ� Ÿ������ ���̴�. �ϴ� û���� ���� ����, ������ �̻��� ã�� �����Ϸ�? ����� �׵��� �Ƹ���� �� û���� �縷�̴�. �������ν� ���Ͽ�, ����� �׸��Ͽ��°�?');



SELECT * FROM type_test_08;


--CLOB�����͸� ��ȸ�� ���� DBMS_LOB.SUBSTR() �Լ��� ����ؾ��Ѵ�
SELECT DBMS_LOB.SUBSTR( data1, 10, 1 ) --ó������ 10���� ��ȸ
FROM type_test_08;

SELECT DBMS_LOB.SUBSTR( data1, length(data1), 1 ) --ó������ 10���� ��ȸ
FROM type_test_08;



 

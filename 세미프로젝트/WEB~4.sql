DROP TABLE custom_reply;
DROP TABLE custom_board_attachment;
DROP TABLE custom_board;

DROP TABLE official_reply;
DROP TABLE official_board_attachment;
DROP TABLE official_board;

DROP TABLE blacklist;
DROP TABLE report_board;

DROP TABLE shopping_board_attachment;
DROP TABLE shopping_board;

DROP TABLE qna_board_attachment;
DROP TABLE qna_board_reply;
DROP TABLE qna_board;

DROP TABLE free_board_attachment;
DROP TABLE free_board_reply;
DROP TABLE free_board;

DROP TABLE attachment_profile;

DROP TABLE customcocktail;
DROP TABLE officialcocktail;


DROP TABLE email;
DROP TABLE user_admin;
DROP TABLE message;

DROP TABLE user_info;
 
 --����DB ���̺�   
CREATE TABLE message (
msg_no NUMBER primary key,
msg_send VARCHAR2(100),
msg_rec VARCHAR2(100),
msg_title VARCHAR2(100),
msg_content VARCHAR2(500),
send_date DATE 
);

--���Ǽ� Ĭ���� DB 
CREATE TABLE officialcocktail (
    official_cocktail_no NUMBER primary key, --Ĭ���Ϲ�ȣ
    official_cocktail_name VARCHAR2(100), --Ĭ�����̸�
    official_cocktail_detail VARCHAR2(2000), --Ĭ���ϼ���
    official_cocktail_ingred VARCHAR2(2000), --Ĭ�������
    official_cocktail_vote NUMBER --��õ��
);

DROP SEQUENCE officailcocktail_seq;
CREATE SEQUENCE officailcocktail_seq; --���Ǽ�Ĭ���� ��ȣ ������


--Ŀ���� Ĭ���� DB
CREATE TABLE customcocktail (
    custom_cocktail_no NUMBER primary key, --Ĭ���Ϲ�ȣ
    custom_cocktail_name VARCHAR2(100), --Ĭ�����̸�
    custom_cocktail_detail VARCHAR2(2000), --Ĭ���ϼ���
    cocktail_ingred VARCHAR2(2000), --Ĭ������� 
    attach_no NUMBER, --Ĭ���� ����
    custom_cocktail_vote NUMBER --��õ��
);

DROP SEQUENCE customcocktail_seq;
CREATE SEQUENCE customcocktail_seq; -- Ŀ����Ĭ���� ��ȣ ������

INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Mimosa,�̸��', '������������ �������� Champagne a l��Orange(������ �� �ζ���)�μ�, �����ȸ���� ���� Ĭ����. ��ä�� �̸�� �ɰ� �����ؼ� �̸���� ��Ī���� �Ҹ�����. ���������� ���� ����(Bucks Fizz)��� �Ѵ�. Recipe:������ �ܿ� ������ �ֽ��� �ְ�, �������� ��� �ξ��� �� �ε巴�� �����ݴϴ�. Garnish:��ȣ�� �°� �����̽� �������� ����մϴ�.', '�������ֽ� 75ml,������ 75ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Mojito,������', '��(Rum)�� ������ ���� �� ���Ž�(Rum Smash)�� �����̳� �����ֽ��� ÷���� Ĭ������ ����. Recipe:��Ʈ���� ������ ���� �ֽ��� ���� �� �Ҵټ��� �ְ� �ܿ� ������ ä��ϴ�. ���ָ� �װ� �Ҵټ��� �׽��ϴ�. ��� ��ᰡ ���̵��� ������ �����ݴϴ�. Garnish:��Ʈ�ٰ� ���� �����̽��� ����մϴ�.', 'ȭ��Ʈ �� 45m,�����ֽ� 120ml,��Ʈ��,���� 2tsp,�Ҵټ�',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Pina Colada,�ǳ��ݶ��', '���ڿ� �����ٴ� ���� ���ڳ� ��� ���ξ��� �ֽ��� ��췯�� �������� ����� �Ѹ��� �ް� �ִ� Ʈ������ Ĭ���� �� �ϳ�.Recipe:��� ��Ḧ ������ �Բ� �����մϴ�.Garnish:Ĭ���� ü���� �Բ� ���ξ��� �������� ����մϴ�.', 'ȭ��Ʈ�� 50ml,���ڳ�ũ�� 30ml,���ξ����ֽ� 50ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Sex on the Beach,���� �� �� ��ġ', '���� �� �� ��ġ(Sex on the Beach)�� ����ī ����� Ĭ�����̴�.Recipe:������ ä�� ���̺� �۶󽺿� ��� ��Ḧ �����մϴ�.Garnish:�����������̽� �������� ����մϴ�.', '����ī 40ml,������������ 20ml,�������ֽ� 40ml,ũ�������ֽ� 40ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Margarita, ������Ÿ', '���������� ������ �� ������ ��ȭ�������� �ַ� ��ų��� ũ��Ʈ��(��������, ��ť�� ���� ����)�� ��������, ����ī�� Ʈ���� ��ũ(��ť�� ���� ��ǥ��)�ε� ������.Recipe:��� ��Ḧ ������ �Բ� ����Ŀ�� �ֽ��ϴ�.������ �� Ĭ���� �۶󽺿� ���� ���� �����ϴ�.Garnish:��ȣ�� �°� �׿� ���� �ұ��� ���� ���ν���(frosting)�� �����ϴ�.', '��ų�� 50ml,ũ��Ʈ��(Cointreau) 20ml,�����ֽ� 15ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Bloody Mary,���� �޸�', '���� �޸�(Bloody Mary)�� Ĭ������ �� �����̴�. Recipe:�Һ��� ������ �ְ�, ����ī, �丶�� �ֽ�, ���� �ֽ��� ���� ��, �����ϴ�. �����̽� �������� ����ϰ�(��Ʈ�� ������ ����ϴ� ��쿡�� �۷����� �����ڸ��� �ȾƼ�, ���ô� ����� ��ȣ�� �°� �����ϰ� ¥�� �Ÿ��� �����ϵ��� �մϴ�, ��������, �Ǵ� ���θ� ��ƽ�� ÷���մϴ�. �Ŀ�, ����, ���θ� ��Ʈ, Ÿ�ٽ��� �ҽ�, �콺Ÿ �ҽ� ���� ������ ÷���մϴ�.Garnish:��ȣ�� �°� ������, �������� ����մϴ�.', '����ī 45ml,�丶���ֽ� 90ml,�����ֽ� 15ml,�콺�ͼҽ�,Ÿ�ٽ���,�������ұ�,����',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Grasshopper,�׷���ȣ��', '�ŷ����� �����, ��Ʈ���� ���̵� ũ�� Ĭ�����̴�. ���� ���� ũ�� �� īī���� ����ϸ� �����ŭ �������� ������ ���� �Ȱ���.Recipe:������ ä���� ����Ŀ�� ��� ��Ḧ �׽��ϴ�.�� �� ���� ���� ���ϴ�. ������ ���� Ĭ���� �۶󽺿� �����ϴ�.Garnish:��ȣ�� ���� ��Ʈ������ ����մϴ�.', 'ũ�� �� īī��(White) 20ml,ũ�� �� ����(Green) 20ml ,���� ũ�� 20ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Cosmopolitan,�ڽ�������ź', '''������'', ''������'', ''������������'' ���� �������� �ǹ̸� ���� �ڽ�������ź�� ����� ��ũ���� �׷����̼��� �ſ� �������̸� ���� �����鿡�� �α� �ִ� Ĭ�����̴�. Recipe:������ ä�� Ĭ���� ����Ŀ�� ��� ��Ḧ �ֽ��ϴ�. �� ���� ū Ĭ���� �۶󽺿� ������.Garnish:���󽽶��̽��� ����Ѵ�', '����ī 40ml,���Ʈ��(Cointreau) 15ml,�����ֽ� 15ml,ũ�������ֽ� 30ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Long Island Ice Tea,�� ���Ϸ��� ���̽�Ƽ', '�������� �վ��Ϸ��忡�� ź���� ��, �Ϻ��� ����� ���� ���� �ֱ�����, ���� �޼��� ������ Ĭ�����̴�. ����ϴ� ���� ��� 40���� �Ѵ� ���� ��. �ܰ������δ� ���̽� Ƽ������, ���ڿ� ������ �� �ƿ� Ĭ���� �̻��̴�. ������� �������� �����ϸ� ���ϰ� �ϴ� �����̸�, �ݶ� ���� ������ �� �� �ȴ�.Recipe:������ ä�� ���̺� �۶󽺿� ��� ��Ḧ ���� �� �ε巴�� �����ݴϴ�.Garnish:��ȣ�� ���� ���󽽶��̽��� ����մϴ�.', '����ī 15ml,��ų�� 15ml ,ȭ��Ʈ�� 15ml,�� 15ml,���Ʈ��(Cointreau) 15ml ,�����ֽ� 30ml,�÷� 20ml,�ݶ�',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Mint Julep,��Ʈ �ٷ�', '���� ������ Ĭ�����̸�, �̱��� ���ο��� ���۵Ǿ���. �ż��� ��Ʈ ���� �ֱ⵵ �Ѵ�.Recipe:�����θ��� �ſ� ������ ���� ��Ʈ�� �ε巴�� ���� �����ϴ�. �ܿ� ũ������ ���̽��� ä��� ���� ����Ű�� �ְ� ���� ǥ���� ������ �� ������ �� �����ݴϴ�..Garnish:��Ʈ������ ����Ѵ�.', '���� ����Ű 60ml,��Ʈ�� 4��,�Ŀ�� ���� 1tsp ,�� 2tsp',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Moscow Mule,��ũ�� ��', '�������� �̱��� ����ī ������ Ĭ�����̸�, ���� ���� ���� ���� ���� �Ӱ����� ���ָ� ����ϰ�, �ڱ������� ������� ����ī�� ����� �ִ´�. Recipe:�� ���̳� �� �۶󽺿� ����ī�� ���� �� �����ϴ�. ���� �ֽ��� �ְ� ��� ��ᰡ ���̵��� �ε巴�� �����ݴϴ�.Garnish:���ӽ����̽��� ����մϴ�.', '����ī 45ml,������� 120ml,�����ֽ� 10ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Sea Breeze,�� �긮��', '�� Ĭ������ ���ڿ� ������ ���� �帵ũ��, �� �̸��� �ִ� �ż��� ������ ���Ҿ� ���� ����鿡�� �α⸦ �����. ����� ������ �������� �ս��� ���� �� �ִ� Ĭ���Ϸ� �� �ȿ��� �ÿ��� �ٴ�ٶ��� ������ ���� �� ����ī�� �ż��� ���� �ֽ��� �� �긮� ������ ���� ���? Recipe:������ ä�� ���̺� �۶󽺿� ��� ��Ḧ ����ϴ�.Garnish:ü���� ����մϴ�.', '����ī 40ml,ũ�������ֽ� 120ml,�ڸ��ֽ� 30ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'June Bug,�ع�', '''6���� ����''��� �ǹ̷�, �ʷ��� �̱׷��� ������ �׾߸��� ���������� �����Ų��. ������ ��⿡ �ŷ�Ǿ� ���� ã�ƴٴϵ�, ������ �ʷ��� ������ ���� �׸��� ��а� ���ڳ��� ������ ��Ⱑ ������ ���ڿ����� �� �������� �ʾ� Ư�� �������� ���� ã�� Ĭ���� �� �ϳ���.Recipe:Ĭ���� ����Ŀ�� ��� ��Ḧ �־� ���� ũ������ ���̽��� �Բ� Ĭ���� �۶󽺿� ������.Garnish:����������� ����մϴ�.', '��������� 30ml,������ �� 15ml ,ũ�� �� �ٳ��� 15ml ,�����ֽ� 30ml,���ξ����ֽ� 60ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Kahlua Milk, ���� ��ũ ', '��ť���� ���̽��� �� Ĭ����. �� �״�� ������ Ŀ�� ��ť���� ���Ƹ� ���� ������ �����ϰ� �ε巯��� ������ ���ֿ� ����� ����. ���� ������ ���� �翡 ���� ������ �޶�����. ������ ������ Ŀ����� ������ �ε巯�� ���� ��鿩���� ���� �ͼ����� ���� ������� �����Ѵ�. Recipe:����Ŀ�� ���Ƹ� �ְ� ������ ������ ä�� �� ���ϴ�.', '���� 45ml,����',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Black Russian,�� ���þ�', '�� ���þ��̶�� �̸��� ���þƸ� ��ǥ�ϴ� ����ī�� ����Ѵٴ� �Ͱ� ���� ������ �Ϳ��� �����Ͽ���. Ŀ�� ��ť���� �ܸ��� ���� ����ī�� �ε巴�� �Ͽ�, ���ڿ� �Է��� �������� �ұ��ϰ� ��ĥ���� ���� �λ����� Ĭ�����̴�. Recipe: �õ� �м� �۶󽺿� ����ī�� Ŀ�� ��ť� ���� �� ������ �ְ� ������ ���´�.', '����ī 40ml,Ŀ�� ��ť�� 20ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Martini,��Ƽ��', 'Ĭ������ ���̴�. ����� ����� �پ��ؼ�, ������ ������ Ĭ���� �������� ����� ����� ������ ���� 100���� ������ �ȴ�. ���� ������ Ĭ���ϵ� ��Ƹ� �� ���� ������ ����.�� Ĭ������ ��Ƽ�����μ��� ������ �� ���� Ĭ�����̴�. ��Ƽ�� ���丮Ƽ�� Ĭ���Ϸ� ���� ���� ���⿡ ���õǾ� �ִ� ������� �ް�, ���� ��� ���� ���� ���� ������Դ� ����̷� �����. ���� �����ε� �����. Recipe: ��Ḧ ȥ�� �۷����� �ְ� ���� �� Ĭ���� �ܿ� �����ϴ�.Garnish:�ø���� ����մϴ�.', '������� 75ml,����� ������Ʈ 15ml,1drop ������ ����,1�� �׸��ø���',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Blue Moon Cocktail,��� �� Ĭ����', '1955���, Ʈ���� ���� ������, ��ĥ���� ��޽����� ������ ���� ������ �ŷ��Ų Ĭ�����̴�. ����� �����ϰ� ���� �ڻ�����, ��ť���� �����԰� ������ û������ ��ȭ�� �� �̷�� �ִ�. Ǫ�� ���̶�� �θ�ƽ�� �̸����� ''�Ұ����� ���''�̶�� �ǹ̵� �ִ�, �ź����� Ĭ�����̴�.Recipe:��� ��Ḧ ����Ŀ�� �ְ� ��� �� Ĭ���� �ܿ� �����ϴ�.', '������� 30ml,���̿÷� ��ť�� 15ml,���� �ֽ� 15ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Old Fashioned,�õ� �м�', '��Ī�� Ĭ������ ���翡�� ������ ���ε�, ���� �õ� �мǵ�� ����, ����, �׸��� ���ͽ� �� �� ���� ��Ḧ �� �ܼ��� ������ ���ῴ����, ��ÿ��� ���͵� ����(Bittered Sling)�̶� �ҷ���. ���� 19���� �̱����� ���� ���ٴ����� ���� ����Ű�� ���� ������ �ܼ��� ������ �پ��� ������ �ٲٱ� ���� ���� ���� �õ��� �����ϰ� �ȴ�. �õ� �м��� ''��ǳ''�̶�� ���ε�, �� �̸����� �ݴ��, ���ݵ� ������ ���������κ��� ����� �ް� �ִ�. Recipe: �õ� �м� �۷����� ���� �������� ���͸� �ļ� �� ������ �� �� ����Ű�� �״´�. Garnish:������ �����̽�, ���� �����̽�, ü���� ����Ѵ�.', '�� ����Ű 45ml,�Ӱ����� ���� 2dashes,������ 1��,�β��� ������ �����̽� 1��,�β��� ���� �����̽� 1��,ü�� 1��',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Midori Sour,�̵��� ���', '���(Sour)�� ''��'', ''��ŭ��''�� �ǹ��ε�, �̵��� ����� �����ֿ� ��̿� �ܸ��� ���� ���� Ĭ���Ϸ� ���� ���� �Ҵټ��� �뷮�� ���̰� �ִ�. �Ҵټ��� ������� �ʴ� ����, ���� �ֽ��� ������ ����Ͽ� ���޴����� ���� ���� û������ �ִ� ��쵵 �ִ�. �پ��� �����ֳ� ��ť� ����Ͽ� ���� ���� ��� Ĭ������ ���� �� �ִ�. Recipe:�̵����� �����ֽ�,�÷��� ���� �� �ܿ� ���� �� �Ҵټ��� ä���.', '�̵��� 45ml, �����ֽ� 15ml,�÷�5ml,�Ҵټ�',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Blue Hawaii,����Ͽ���', '1957�� �Ͽ��� ��ư ȣ�� ���ٴ��� ������ �� Ĭ������, ������� ������ �Ͽ��� ���� �����Ű�� Ʈ������ Ĭ�����̴�. ȭ��Ʈ ���� ��� ť��Ұ� �Ͽ����� �ÿ��ϰ� Ʈ�� �ϴð� Ǫ�� �ٴٸ� �����ϰ� �����ϰ� �ִ�. ������ ���� �ÿ��԰� �Կ��� �������� ���޴����� ���� ���� �����̴� Ĭ���Ϸ�, ����Ŀ�� ����ص� ���� ������ ����� ������ ��Ÿ�Ϸ� �ÿ��ϰ� ��ܵ� ����. Recipe:��Ḧ ��� ����Ŀ�� �־� ��� �� �ܿ� ������.', 'ȭ��Ʈ �� 30ml,��� ť��� 15ml,���ξ����ֽ� 30ml,�����ֽ� 15ml ',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Peach Crush,��ġ ũ����', '�����鿡�� ����� �αⰡ �ִ� Ĭ����������, ������ ���ڿð� ���� ���� �����ϴ� ����̶�� ������ ������ ���� Ĭ�����̴�. ������ ��ġ ��ť��� �ֽ��� �̿��� ���� ����, �μ� ������ ����� ���� ���ŷӴٸ� ť��� ���̽�(Cubed Ice)�� �־ �ȴ�. Recipe:ũ������ ���̽��� ���� �� ��Ḧ ��� �ְ� �����ϴ�.Garnish:ü���� ���󽽶��̽��� ����մϴ�.', '��ġ ��ť�� 30ml,��� �ͽ� 60ml,ũ�������ֽ� 60ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Manhattan Cocktail,����ư', '����Ű ���̽���, Ĭ������ �����̶�� ��Ī�� ������ �ִ� Ĭ�����̴�. ����Ʈ ������Ʈ�� �� ������ ���� ���ϰ� ������, ������ �����ַε� �з��ȴ�. Recipe:��Ḧ ��� �ͽ� �۶󽺿� �ְ� ������ �Բ� �����ϴ�. ���� ������ �ɷ����� ������ ���� ��Ƽ�� �۶󽺿� �����ϴ�. Garnish:ü���� ����մϴ�.', '���� ����Ű 45ml,����Ʈ ������Ʈ 20ml,�Ӱ����� ���� 1dash',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Rusty Nail,����Ƽ ����', '��Ḧ ������ ����Ű��� ���� �ִ� å�� ������, �� �ϳ��� ����� ������̰� ��īġ ����Ű�� ���̽��� �� ��� ��ť���̱� ������, ȥ���ϴ� ��쿡�� ��īġ ����Ű�� �ϴ� ���� ����. 40�� �̻��� ���� ���Ǳ� ������, �����ϴٰ� �ؼ� ����ϰ� �����ϸ� �ݹ� ���ϹǷ� �����ϱ� �ٶ���. Recipe: ��Ḧ ��� �õ� �м� �۷����� �װ� ������ �־� �� �� �� ��Ÿ�Ϸ� �� �� ������ ���´�.', '��īġ ����Ű 30ml,������� 30ml',0);


--rollback;
commit;

SELECT * FROM officialcocktail ORDER BY official_cocktail_no DESC;


--ȸ������
CREATE TABLE user_info (
	user_no NUMBER primary key, --ȸ����ȣ
	user_email VARCHAR2(100), --�̸���
	user_password VARCHAR2(100), --��й�ȣ
	user_point NUMBER, --ȸ��Ȱ������Ʈ
	user_name VARCHAR2(10), --�̸�
	user_birth DATE, --�������
	user_check CHAR(1),  --ȫ�����̸��� ���ŵ��ǿ���
	user_nickname VARCHAR2(100) --Ȱ����
);

--�׽�Ʈ ���� ����
INSERT INTO user_info (user_no, user_email, user_password, user_point, user_name, user_birth, user_check, user_nickname )
VALUES(userInfo_seq.nextval,'abc@naver.com', 'qwerty', 10, '�ƹ���', TO_DATE('1994-01-01', 'YYYY-MM-DD'), '0', 'Ĭ��������');
 
 select * from user_info;

DROP SEQUENCE attachment_seq;
CREATE SEQUENCE attachment_seq; --÷�����Ϲ�ȣ ������

-- ÷������ ������ ����
CREATE TABLE attachment_profile( 
    profile_no number primary key, --������ ��ȣ
    user_no number, --ȸ����ȣ
    profile_name varchar2(100), --�����ʻ����̸�
    FOREIGN KEY (user_no) REFERENCES user_info (user_no)
); 


   
--�����Խ��� ���̺�
CREATE TABLE free_board (
	free_board_no NUMBER primary key,--�۹�ȣ
	user_no NUMBER, --ȸ����ȣ
	free_board_title varchar2(100),--������
	free_board_content varchar2(2000),--�۳���
	free_board_date DATE,--�ۼ��ð�
	free_board_hit NUMBER,--��ȸ��
	free_board_vote NUMBER, --��õ��
    
    FOREIGN KEY (user_no) REFERENCES user_info (user_no)
);

--�����Խ��� ���
CREATE TABLE free_board_reply (
	free_reply_no NUMBER  primary key,
	free_board_no NUMBER,
	user_no NUMBER,
	free_reply_content varchar2(200),
	free_replay_date DATE,
	FOREIGN KEY (free_board_no) REFERENCES free_board (free_board_no),
	FOREIGN KEY (user_no) REFERENCES user_info (user_no) 
);

 --�����Խ��� ÷������ ���̺�
CREATE TABLE free_board_attachment(
    attach_no number primary key,--÷�����Ϲ�ȣ
    free_board_no number, --�Խñ۹�ȣ
    original_file_name varchar2(100), --�������ϸ�
    stored_file_name varchar2(100),--�������ϸ�
    file_size number,--����ũ��
    file_date Date, --���ε� ��¥
    FOREIGN KEY (free_board_no) REFERENCES free_board (free_board_no)
);
 
 
-- ���ǰԽ��� ���̺� 
CREATE TABLE qna_board (
	qna_board_no NUMBER primary key, --���ǹ�ȣ
	 user_no NUMBER, --ȸ����ȣ
	 qna_board_type varchar2(10),--�������� 
	 qna_board_content varchar2(500), --���ǳ���
	 qna_board_date DATE, --��������
	 FOREIGN KEY (user_no) REFERENCES user_info (user_no)
 );
  
  
--���ǰԽ��� �亯
CREATE TABLE qna_board_reply (
	qna_reply_no NUMBER primary key,
	qna_board_no NUMBER,
	board_type varchar2(2),
	user_no NUMBER,
	qna_reply_content varchar2(2000),
	qna_reply_date DATE, 
	FOREIGN KEY (qna_board_no) REFERENCES qna_board (qna_board_no),
	FOREIGN KEY (user_no) REFERENCES user_info (user_no)
);

 -- ���ǰԽ��� ÷������ ���̺�
CREATE TABLE qna_board_attachment(
    attach_no number primary key,--÷�����Ϲ�ȣ
    qna_board_no number, --�Խñ۹�ȣ
    original_file_name varchar2(100), --�������ϸ�
    stored_file_name varchar2(100),--�������ϸ�
    file_size number,--����ũ��
    file_date Date, --���ε� ��¥
    FOREIGN KEY (qna_board_no) REFERENCES qna_board (qna_board_no)
);
  
  
--�������� ���̺�
CREATE TABLE shopping_board (
	shopping_product_no NUMBER primary key, --��ǰ��ȣ
	shopping_category VARCHAR2(20), --ī�װ� 
	shopping_product_title VARCHAR2(100), --��ǰ��
	shopping_product_price NUMBER, --����
	shopping_product_content VARCHAR2(200), --���� 
	shopping_product_link VARCHAR2(100) --��ǰ��ũ
    
);
 
  -- ���� ÷������ ���̺�
CREATE TABLE shopping_board_attachment(
    attach_no number primary key,--÷�����Ϲ�ȣ
    board_no number, --�Խñ۹�ȣ
    original_file_name varchar2(100), --�������ϸ�
    stored_file_name varchar2(100),--�������ϸ�
    file_size number,--����ũ��
    file_date Date, --���ε� ��¥
    FOREIGN KEY (board_no) REFERENCES shopping_board (shopping_product_no)
);
 
--������
CREATE TABLE user_admin (
	admin_id VARCHAR2(100) primary key, --������ ���̵�
	admin_pw VARCHAR2(100) --������ ��й�ȣ
); 
  
--���Ϲ߼� ���
CREATE TABLE email (
	email_no NUMBER primary key, 
	admin_id VARCHAR2(100),
	email_title VARCHAR2(20),
	email_content VARCHAR2(1000),
	email_date DATE,
	FOREIGN KEY (admin_id) REFERENCES user_admin (admin_id) 
);


--������Ʈ 
CREATE TABLE blacklist (
	blacklist_no NUMBER  primary key, --������Ʈ ��ȣ
	admin_id VARCHAR2(100), --ó����
	user_no NUMBER, --ȸ����ȣ
	blacklist_reason VARCHAR2(1000), --����
	FOREIGN KEY (admin_id) REFERENCES user_admin (admin_id) 
);

--�Ű�� ���
CREATE TABLE report_board (
	report_no NUMBER  primary key,
	admin_id VARCHAR2(100),
	report_board_number NUMBER,
	report_board_title VARCHAR2(100),
	report_board_done NUMBER,
	FOREIGN KEY (admin_id) REFERENCES user_admin (admin_id)
);



DROP SEQUENCE userInfo_seq;
CREATE SEQUENCE userInfo_seq;--ȸ����ȣ ������





--���Ǽ� Ĭ���� �Խ���
CREATE TABLE official_board (
	official_board_no NUMBER primary key,
	official_board_title varchar2(100),
	official_board_content varchar2(1000),
	official_board_date DATE,
	official_board_vote NUMBER
);

-- ���Ǽ� Ĭ���� ÷������ �Խ��� 
CREATE TABLE official_board_attachment(
    attachment_no Number primary key,
    official_board_no NUMBER,
    original_file_name varchar2(100), --�������ϸ�
    stored_file_name varchar2(100),--�������ϸ�
    file_size number,--����ũ��
    file_date Date, --���ε� ��¥
    
    FOREIGN KEY (official_board_no) REFERENCES official_board (official_board_no)
);

--���Ǽ� Ĭ���� �Խ��� ���
CREATE TABLE official_reply (
	official_reply_no NUMBER  primary key,
	official_board_no NUMBER,
	user_no NUMBER,
	official_reply_content varchar2(200),
	official_reply_date DATE,
    
	FOREIGN KEY (user_no) REFERENCES user_info (user_no),
	FOREIGN KEY (official_board_no) REFERENCES official_board (official_board_no) 
);

--Ŀ���� Ĭ���� �Խ���  
 CREATE TABLE custom_board (
	 custom_board_no NUMBER primary key,
	 user_no NUMBER ,
	 custom_board_title varchar2(100), 
	 custom_board_content varchar2(2000),
	 custom_board_date DATE,
	 custom_board_hit NUMBER,
	 custom_board_vote NUMBER,

	 FOREIGN KEY (user_no) REFERENCES user_info (user_no)
 );
 
CREATE TABLE custom_board_attachment(
    attachment_no Number primary key,
    custom_board_no NUMBER,
    original_file_name varchar2(100), --�������ϸ�
    stored_file_name varchar2(100),--�������ϸ�
    file_size number,--����ũ��
    file_date Date, --���ε� ��¥
    
    FOREIGN KEY (custom_board_no) REFERENCES custom_board (custom_board_no)
);
 
--Ŀ���� Ĭ���� �Խ��� ���
CREATE TABLE custom_reply (
    custom_reply_no NUMBER primary key,
    custom_board_no NUMBER,
    user_no NUMBER,
    custom_reply_content varchar2(200), 
    comment_date DATE,
    FOREIGN KEY (user_no) REFERENCES user_info (user_no), 
    FOREIGN KEY (custom_board_no) REFERENCES custom_board (custom_board_no)
 ); 
 
 

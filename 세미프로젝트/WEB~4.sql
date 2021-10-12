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
 
 --쪽지DB 테이블   
CREATE TABLE message (
msg_no NUMBER primary key,
msg_send VARCHAR2(100),
msg_rec VARCHAR2(100),
msg_title VARCHAR2(100),
msg_content VARCHAR2(500),
send_date DATE 
);

--오피셜 칵테일 DB 
CREATE TABLE officialcocktail (
    official_cocktail_no NUMBER primary key, --칵테일번호
    official_cocktail_name VARCHAR2(100), --칵테일이름
    official_cocktail_detail VARCHAR2(2000), --칵테일설명
    official_cocktail_ingred VARCHAR2(2000), --칵테일재료
    official_cocktail_vote NUMBER --추천수
);

DROP SEQUENCE officailcocktail_seq;
CREATE SEQUENCE officailcocktail_seq; --오피셜칵테일 번호 시퀀스


--커스텀 칵테일 DB
CREATE TABLE customcocktail (
    custom_cocktail_no NUMBER primary key, --칵테일번호
    custom_cocktail_name VARCHAR2(100), --칵테일이름
    custom_cocktail_detail VARCHAR2(2000), --칵테일설명
    cocktail_ingred VARCHAR2(2000), --칵테일재료 
    attach_no NUMBER, --칵테일 사진
    custom_cocktail_vote NUMBER --추천수
);

DROP SEQUENCE customcocktail_seq;
CREATE SEQUENCE customcocktail_seq; -- 커스텀칵테일 번호 시퀀스

INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Mimosa,미모사', '프랑스에서는 옛날부터 Champagne a l’Orange(샴페인 아 로랑쥬)로서, 상류사회에서 즐겼던 칵테일. 색채가 미모사 꽃과 유사해서 미모사라는 애칭으로 불리웠다. 영국에서는 벅스 피즈(Bucks Fizz)라고 한다. Recipe:샴페인 잔에 오렌지 주스를 넣고, 샴페인을 살살 부어준 뒤 부드럽게 저어줍니다. Garnish:기호에 맞게 슬라이스 오렌지로 장식합니다.', '오렌지주스 75ml,샴페인 75ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Mojito,모히또', '럼(Rum)을 주재료로 넣은 럼 스매시(Rum Smash)에 레몬이나 라임주스를 첨가한 칵테일의 일종. Recipe:민트잎을 설탕과 라임 주스와 섞은 후 소다수를 넣고 잔에 얼음을 채웁니다. 럼주를 붓고 소다수를 붓습니다. 모든 재료가 섞이도록 가볍게 저어줍니다. Garnish:민트잎과 라임 슬라이스로 장식합니다.', '화이트 럼 45m,라임주스 120ml,민트잎,설탕 2tsp,소다수',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Pina Colada,피나콜라다', '알코올 맛보다는 진한 코코넛 향과 파인애플 주스가 어우러져 여성들의 사랑을 한몸에 받고 있는 트로피컬 칵테일 중 하나.Recipe:모든 재료를 얼음과 함께 블렌딩합니다.Garnish:칵테일 체리와 함께 파인애플 조각으로 장식합니다.', '화이트럼 50ml,코코넛크림 30ml,파인애플주스 50ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Sex on the Beach,섹스 온 더 비치', '섹스 온 더 비치(Sex on the Beach)는 보드카 기반의 칵테일이다.Recipe:얼음을 채운 하이볼 글라스에 모든 재료를 블렌드합니다.Garnish:오렌지슬라이스 반쪽으로 장식합니다.', '보드카 40ml,복숭아증류주 20ml,오렌지주스 40ml,크랜베리주스 40ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Margarita, 마가리타', '전통적으로 유명한 이 강력한 소화촉진제는 주로 테킬라와 크왕트로(프랑스산, 리큐르 술의 일종)로 만들지만, 보드카나 트리플 세크(리큐르 술의 상표명)로도 괜찮다.Recipe:모든 재료를 얼음과 함께 셰이커에 넣습니다.차갑게 한 칵테일 글라스에 따라 흔들어 섞습니다.Garnish:기호에 맞게 테에 가는 소금을 묻혀 프로스팅(frosting)을 입힙니다.', '데킬라 50ml,크왕트로(Cointreau) 20ml,라임주스 15ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Bloody Mary,블러디 메리', '블러디 메리(Bloody Mary)는 칵테일의 한 종류이다. Recipe:텀블러에 얼음을 넣고, 보드카, 토마토 주스, 레몬 주스를 따른 후, 젓습니다. 슬라이스 레몬으로 장식하고(컷트한 레몬을 사용하는 경우에는 글래스의 가장자리에 꽂아서, 마시는 사람이 기호에 맞게 적당하게 짜서 신맛을 조절하도록 합니다, 유리막대, 또는 셀로리 스틱을 첨가합니다. 식염, 후추, 셀로리 솔트, 타바스코 소스, 우스타 소스 등을 별도로 첨가합니다.Garnish:기호에 맞게 샐러리, 레몬으로 장식합니다.', '보드카 45ml,토마토주스 90ml,레몬주스 15ml,우스터소스,타바스코,샐러리소금,후추',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Grasshopper,그래스호퍼', '매력적인 녹색의, 민트향이 가미된 크림 칵테일이다. 검은 색의 크렘 드 카카오를 사용하면 녹색만큼 선명하진 않지만 맛은 똑같다.Recipe:얼음이 채워진 셰이커에 모든 재료를 붓습니다.몇 초 동안 세게 흔듭니다. 차갑게 식힌 칵테일 글라스에 따릅니다.Garnish:기호에 따라 민트잎으로 장식합니다.', '크렘 드 카카오(White) 20ml,크렘 드 멘테(Green) 20ml ,진한 크림 20ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Cosmopolitan,코스모폴리탄', '''세계인'', ''국제인'', ''범세계주의자'' 등의 세계적인 의미를 지닌 코스모폴리탄은 희미한 핑크색의 그러데이션이 매우 도시적이며 뉴욕 여성들에게 인기 있는 칵테일이다. Recipe:얼음을 채운 칵테일 셰이커에 모든 재료를 넣습니다. 잘 흔들어 큰 칵테일 글라스에 따른다.Garnish:레몬슬라이스로 장식한다', '보드카 40ml,쿠앵트로(Cointreau) 15ml,라임주스 15ml,크랜베리주스 30ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Long Island Ice Tea,롱 아일랜드 아이스티', '뉴욕주의 롱아일랜드에서 탄생한 후, 일본에 상륙한 것은 극히 최근으로, 이후 급속히 유행한 칵테일이다. 사용하는 술은 모두 40도를 넘는 강한 것. 외관상으로는 아이스 티이지만, 알코올 강도는 넉 아웃 칵테일 이상이다. 술기운이 오래가고 강렬하며 취하게 하는 음료이며, 콜라 색과 구별이 잘 안 된다.Recipe:얼음을 채운 하이볼 글라스에 모든 재료를 넣은 후 부드럽게 저어줍니다.Garnish:기호에 따라 레몬슬라이스로 장식합니다.', '보드카 15ml,데킬라 15ml ,화이트럼 15ml,진 15ml,쿠앵트로(Cointreau) 15ml ,레몬주스 30ml,시럽 20ml,콜라',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Mint Julep,민트 줄렙', '가장 오래된 칵테일이며, 미국의 남부에서 시작되었다. 신선한 민트 잎을 넣기도 한다.Recipe:스테인리스 컵에 설탕과 물로 민트를 부드럽게 다져 섞습니다. 잔에 크러쉬드 아이스를 채우고 버번 위스키를 넣고 잔의 표면이 차가워 질 때까지 잘 저어줍니다..Garnish:민트잎으로 장식한다.', '버번 위스키 60ml,민트잎 4개,파우더 설탕 1tsp ,물 2tsp',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Moscow Mule,모스크바 뮬', '전통적인 미국식 보드카 바탕의 칵테일이며, 색과 향을 위해 많은 양의 앙고스투라 맥주를 사용하고, 자극적으로 만들려면 보드카를 충분히 넣는다. Recipe:뮬 컵이나 락 글라스에 보드카와 진저 비어를 섞습니다. 라임 주스를 넣고 모든 재료가 섞이도록 부드럽게 저어줍니다.Garnish:라임슬라이스로 장식합니다.', '보드카 45ml,진저비어 120ml,라임주스 10ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Sea Breeze,시 브리즈', '이 칵테일은 알코올 도수가 낮은 드링크로, 그 이름이 주는 신선한 느낌과 더불어 많은 사람들에게 인기를 얻었다. 기법이 간단해 집에서도 손쉽게 만들 수 있는 칵테일로 집 안에서 시원한 바닷바람을 느끼고 싶을 때 보드카와 신선한 과일 주스로 시 브리즈를 만들어보는 것은 어떨까? Recipe:얼음을 채운 하이볼 글라스에 모든 재료를 담습니다.Garnish:체리로 장식합니다.', '보드카 40ml,크랜베리주스 120ml,자몽주스 30ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'June Bug,준벅', '''6월의 벌레''라는 의미로, 초록의 싱그러운 색깔이 그야말로 여름벌레를 연상시킨다. 벌들이 향기에 매료되어 꽃을 찾아다니듯, 여름날 초록의 상쾌한 색감 그리고 멜론과 코코넛의 달콤한 향기가 가득해 알코올조차 잘 느껴지지 않아 특히 여성들이 많이 찾는 칵테일 중 하나다.Recipe:칵테일 셰이커에 모든 재료를 넣어 흔들고 크러쉬드 아이스와 함께 칵테일 글라스에 따른다.Garnish:멜론조각으로 장식합니다.', '멜론증류주 30ml,말리부 럼 15ml ,크렘 드 바나나 15ml ,레몬주스 30ml,파인애플주스 60ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Kahlua Milk, 깔루아 밀크 ', '리큐르를 베이스로 한 칵테일. 말 그대로 우유에 커피 리큐르인 깔루아를 섞은 것으로 달콤하고 부드러우며 도수는 맥주와 비슷한 정도. 물론 우유를 섞는 양에 따라 도수는 달라진다. 깔루아의 달콤한 커피향과 우유의 부드러운 맛이 곁들여져서 술에 익숙하지 않은 사람들이 좋아한다. Recipe:셰이커에 깔루아를 넣고 얼음과 우유로 채운 뒤 흔듭니다.', '깔루아 45ml,우유',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Black Russian,블랙 러시안', '블랙 러시안이라는 이름은 러시아를 대표하는 보드카를 사용한다는 것과 색이 검정인 것에서 유래하였다. 커피 리큐어의 단맛이 독한 보드카를 부드럽게 하여, 알코올 함량이 높은데도 불구하고 감칠맛이 좋은 인상적인 칵테일이다. Recipe: 올드 패션 글라스에 보드카와 커피 리큐어를 넣은 후 얼음을 넣고 가볍게 젓는다.', '보드카 40ml,커피 리큐어 20ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Martini,마티니', '칵테일의 왕이다. 만드는 방법도 다양해서, 세계의 유명한 칵테일 서적에서 만드는 방법을 조사해 보면 100가지 정도나 된다. 또한 유사한 칵테일도 헤아릴 수 없을 정도로 많다.이 칵테일은 파티용으로서도 빼놓을 수 없는 칵테일이다. 파티나 아페리티프 칵테일로 마실 때는 여기에 제시되어 있는 방법보다 달게, 술집 등에서 독한 맛을 즐기는 사람에게는 드라이로 만든다. 또한 록으로도 만든다. Recipe: 재료를 혼합 글래스에 넣고 저은 후 칵테일 잔에 따릅니다.Garnish:올리브로 장식합니다.', '드라이진 75ml,드라이 베르무트 15ml,1drop 오렌지 비터,1개 그린올리브',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Blue Moon Cocktail,블루 문 칵테일', '1955년경, 트리스 바의 전성시, 감칠맛과 고급스러운 색으로 젊은 여성을 매료시킨 칵테일이다. 블루라는 깨끗하고 연한 자색으로, 리큐어의 달콤함과 레몬의 청량감이 조화를 잘 이루고 있다. 푸른 달이라는 로맨틱한 이름에는 ''불가능한 상담''이라는 의미도 있는, 신비적인 칵테일이다.Recipe:모든 재료를 셰이커에 넣고 흔든 뒤 칵테일 잔에 따릅니다.', '드라이진 30ml,바이올렛 리큐르 15ml,레몬 주스 15ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Old Fashioned,올드 패션', '명칭이 칵테일의 역사에서 유래한 것인데, 본래 올드 패션드는 양주, 설탕, 그리고 비터스 이 세 가지 재료를 쓴 단순한 조합의 음료였으며, 당시에는 비터드 슬링(Bittered Sling)이라 불렀다. 이후 19세기 미국에서 여러 바텐더들이 버번 위스키를 통해 이전의 단순한 맛에서 다양한 맛으로 바꾸기 위해 여러 번의 시도를 진행하게 된다. 올드 패션은 ''고풍''이라는 뜻인데, 이 이름과는 반대로, 지금도 폭넓은 연령층으로부터 사랑을 받고 있다. Recipe: 올드 패션 글래스에 넣은 각설탕에 비터를 쳐서 잘 스며들게 한 후 위스키를 붓는다. Garnish:오렌지 슬라이스, 레몬 슬라이스, 체리로 장식한다.', '본 위스키 45ml,앙고스투라 비터 2dashes,각설탕 1개,두꺼운 오렌지 슬라이스 1장,두꺼운 레몬 슬라이스 1장,체리 1개',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Midori Sour,미도리 사워', '사워(Sour)는 ''신'', ''시큼한''의 의미인데, 미도리 사워는 증류주에 산미와 단맛을 더해 만든 칵테일로 나라에 따라 소다수의 용량에 차이가 있다. 소다수를 사용하지 않는 경우와, 레몬 주스와 설탕을 사용하여 새콤달콤한 맛을 내며 청량감을 주는 경우도 있다. 다양한 증류주나 리큐어를 사용하여 여러 가지 사워 칵테일을 만들 수 있다. Recipe:미도리와 레몬주스,시럽을 섞은 후 잔에 따른 뒤 소다수를 채운다.', '미도리 45ml, 레몬주스 15ml,시럽5ml,소다수',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Blue Hawaii,블루하와이', '1957년 하와이 힐튼 호텔 바텐더가 개발한 이 칵테일은, 사계절이 여름인 하와이 섬을 연상시키는 트로피컬 칵테일이다. 화이트 럼과 블루 큐라소가 하와이의 시원하게 트인 하늘과 푸른 바다를 생생하게 재현하고 있다. 눈으로 보는 시원함과 입에서 느껴지는 새콤달콤한 맛이 더욱 돋보이는 칵테일로, 셰이커를 사용해도 좋고 블렌더를 사용한 프로즌 스타일로 시원하게 즐겨도 좋다. Recipe:재료를 모두 셰이커에 넣어 흔든 뒤 잔에 따른다.', '화이트 럼 30ml,블루 큐라소 15ml,파인애플주스 30ml,레몬주스 15ml ',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Peach Crush,피치 크러시', '여성들에게 상당히 인기가 있는 칵테일이지만, 적당한 알코올과 과일 향을 좋아하는 사람이라면 누구나 좋아할 만한 칵테일이다. 집에서 피치 리큐어와 주스를 이용해 만들어도 좋고, 부순 얼음을 만드는 것이 번거롭다면 큐브드 아이스(Cubed Ice)를 넣어도 된다. Recipe:크러쉬드 아이스를 넣은 후 재료를 모두 넣고 섞습니다.Garnish:체리와 레몬슬라이스로 장식합니다.', '피치 리큐어 30ml,사워 믹스 60ml,크랜베리주스 60ml',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Manhattan Cocktail,맨해튼', '위스키 베이스로, 칵테일의 여왕이라는 별칭을 가지고 있는 칵테일이다. 스위트 베르무트가 들어가 달콤한 맛을 지니고 있으며, 때문에 식전주로도 분류된다. Recipe:재료를 모두 믹싱 글라스에 넣고 얼음과 함께 섞습니다. 이후 얼음을 걸러내고 차갑게 식힌 마티니 글라스에 따릅니다. Garnish:체리로 장식합니다.', '라이 위스키 45ml,스위트 베르무트 20ml,앙고스투라 비터 1dash',0);
INSERT INTO officialcocktail ( official_cocktail_no, official_cocktail_name, official_cocktail_detail, official_cocktail_ingred, official_cocktail_vote ) VALUES ( officailcocktail_seq.nextval, 'Rusty Nail,러스티 네일', '재료를 간단히 위스키라고 적고 있는 책도 있지만, 또 하나의 재료인 드란부이가 스카치 위스키를 베이스로 한 허니 리큐어이기 때문에, 혼합하는 경우에는 스카치 위스키로 하는 것이 좋다. 40도 이상의 술이 사용되기 때문에, 달콤하다고 해서 방심하고 과음하면 금방 취하므로 주의하기 바란다. Recipe: 재료를 모두 올드 패션 글래스에 붓고 얼음을 넣어 온 더 록 스타일로 한 후 가볍게 젓는다.', '스카치 위스키 30ml,드란부이 30ml',0);


--rollback;
commit;

SELECT * FROM officialcocktail ORDER BY official_cocktail_no DESC;


--회원정보
CREATE TABLE user_info (
	user_no NUMBER primary key, --회원번호
	user_email VARCHAR2(100), --이메일
	user_password VARCHAR2(100), --비밀번호
	user_point NUMBER, --회원활동포인트
	user_name VARCHAR2(10), --이름
	user_birth DATE, --생년월일
	user_check CHAR(1),  --홍보성이메일 수신동의여부
	user_nickname VARCHAR2(100) --활동명
);

--테스트 유저 삽입
INSERT INTO user_info (user_no, user_email, user_password, user_point, user_name, user_birth, user_check, user_nickname )
VALUES(userInfo_seq.nextval,'abc@naver.com', 'qwerty', 10, '아무개', TO_DATE('1994-01-01', 'YYYY-MM-DD'), '0', '칵테일좋아');
 
 select * from user_info;

DROP SEQUENCE attachment_seq;
CREATE SEQUENCE attachment_seq; --첨부파일번호 시퀀스

-- 첨부파일 프로필 사진
CREATE TABLE attachment_profile( 
    profile_no number primary key, --프로필 번호
    user_no number, --회원번호
    profile_name varchar2(100), --프로필사진이름
    FOREIGN KEY (user_no) REFERENCES user_info (user_no)
); 


   
--자유게시판 테이블
CREATE TABLE free_board (
	free_board_no NUMBER primary key,--글번호
	user_no NUMBER, --회원번호
	free_board_title varchar2(100),--글제목
	free_board_content varchar2(2000),--글내용
	free_board_date DATE,--작성시간
	free_board_hit NUMBER,--조회수
	free_board_vote NUMBER, --추천수
    
    FOREIGN KEY (user_no) REFERENCES user_info (user_no)
);

--자유게시판 댓글
CREATE TABLE free_board_reply (
	free_reply_no NUMBER  primary key,
	free_board_no NUMBER,
	user_no NUMBER,
	free_reply_content varchar2(200),
	free_replay_date DATE,
	FOREIGN KEY (free_board_no) REFERENCES free_board (free_board_no),
	FOREIGN KEY (user_no) REFERENCES user_info (user_no) 
);

 --자유게시판 첨부파일 테이블
CREATE TABLE free_board_attachment(
    attach_no number primary key,--첨부파일번호
    free_board_no number, --게시글번호
    original_file_name varchar2(100), --원본파일명
    stored_file_name varchar2(100),--저장파일명
    file_size number,--파일크기
    file_date Date, --업로드 날짜
    FOREIGN KEY (free_board_no) REFERENCES free_board (free_board_no)
);
 
 
-- 문의게시판 테이블 
CREATE TABLE qna_board (
	qna_board_no NUMBER primary key, --문의번호
	 user_no NUMBER, --회원번호
	 qna_board_type varchar2(10),--문의종류 
	 qna_board_content varchar2(500), --문의내용
	 qna_board_date DATE, --문의일자
	 FOREIGN KEY (user_no) REFERENCES user_info (user_no)
 );
  
  
--문의게시판 답변
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

 -- 문의게시판 첨부파일 테이블
CREATE TABLE qna_board_attachment(
    attach_no number primary key,--첨부파일번호
    qna_board_no number, --게시글번호
    original_file_name varchar2(100), --원본파일명
    stored_file_name varchar2(100),--저장파일명
    file_size number,--파일크기
    file_date Date, --업로드 날짜
    FOREIGN KEY (qna_board_no) REFERENCES qna_board (qna_board_no)
);
  
  
--쇼핑정보 테이블
CREATE TABLE shopping_board (
	shopping_product_no NUMBER primary key, --상품번호
	shopping_category VARCHAR2(20), --카테고리 
	shopping_product_title VARCHAR2(100), --상품명
	shopping_product_price NUMBER, --가격
	shopping_product_content VARCHAR2(200), --설명 
	shopping_product_link VARCHAR2(100) --상품링크
    
);
 
  -- 쇼핑 첨부파일 테이블
CREATE TABLE shopping_board_attachment(
    attach_no number primary key,--첨부파일번호
    board_no number, --게시글번호
    original_file_name varchar2(100), --원본파일명
    stored_file_name varchar2(100),--저장파일명
    file_size number,--파일크기
    file_date Date, --업로드 날짜
    FOREIGN KEY (board_no) REFERENCES shopping_board (shopping_product_no)
);
 
--관리자
CREATE TABLE user_admin (
	admin_id VARCHAR2(100) primary key, --관리자 아이디
	admin_pw VARCHAR2(100) --관리자 비밀번호
); 
  
--메일발송 기록
CREATE TABLE email (
	email_no NUMBER primary key, 
	admin_id VARCHAR2(100),
	email_title VARCHAR2(20),
	email_content VARCHAR2(1000),
	email_date DATE,
	FOREIGN KEY (admin_id) REFERENCES user_admin (admin_id) 
);


--블랙리스트 
CREATE TABLE blacklist (
	blacklist_no NUMBER  primary key, --블랙리스트 번호
	admin_id VARCHAR2(100), --처리자
	user_no NUMBER, --회원번호
	blacklist_reason VARCHAR2(1000), --사유
	FOREIGN KEY (admin_id) REFERENCES user_admin (admin_id) 
);

--신고글 목록
CREATE TABLE report_board (
	report_no NUMBER  primary key,
	admin_id VARCHAR2(100),
	report_board_number NUMBER,
	report_board_title VARCHAR2(100),
	report_board_done NUMBER,
	FOREIGN KEY (admin_id) REFERENCES user_admin (admin_id)
);



DROP SEQUENCE userInfo_seq;
CREATE SEQUENCE userInfo_seq;--회원번호 시퀀스





--오피셜 칵테일 게시판
CREATE TABLE official_board (
	official_board_no NUMBER primary key,
	official_board_title varchar2(100),
	official_board_content varchar2(1000),
	official_board_date DATE,
	official_board_vote NUMBER
);

-- 오피셜 칵테일 첨부파일 게시판 
CREATE TABLE official_board_attachment(
    attachment_no Number primary key,
    official_board_no NUMBER,
    original_file_name varchar2(100), --원본파일명
    stored_file_name varchar2(100),--저장파일명
    file_size number,--파일크기
    file_date Date, --업로드 날짜
    
    FOREIGN KEY (official_board_no) REFERENCES official_board (official_board_no)
);

--오피셜 칵테일 게시판 댓글
CREATE TABLE official_reply (
	official_reply_no NUMBER  primary key,
	official_board_no NUMBER,
	user_no NUMBER,
	official_reply_content varchar2(200),
	official_reply_date DATE,
    
	FOREIGN KEY (user_no) REFERENCES user_info (user_no),
	FOREIGN KEY (official_board_no) REFERENCES official_board (official_board_no) 
);

--커스텀 칵테일 게시판  
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
    original_file_name varchar2(100), --원본파일명
    stored_file_name varchar2(100),--저장파일명
    file_size number,--파일크기
    file_date Date, --업로드 날짜
    
    FOREIGN KEY (custom_board_no) REFERENCES custom_board (custom_board_no)
);
 
--커스텀 칵테일 게시판 댓글
CREATE TABLE custom_reply (
    custom_reply_no NUMBER primary key,
    custom_board_no NUMBER,
    user_no NUMBER,
    custom_reply_content varchar2(200), 
    comment_date DATE,
    FOREIGN KEY (user_no) REFERENCES user_info (user_no), 
    FOREIGN KEY (custom_board_no) REFERENCES custom_board (custom_board_no)
 ); 
 
 

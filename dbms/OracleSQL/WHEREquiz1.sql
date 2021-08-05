
SELECT * FROM patient; --환자
SELECT * FROM treat; --진료
SELECT * FROM doctor; --의사
SELECT * FROM department; --진료과
SELECT * FROM inpatient; --입원


-----

--1. 성별이 남자인 오씨성을 가진 환자 조회


SELECT PAT_NAME FROM patient
WHERE PAT_GENDER = 'M'
--    AND PAT_NAME LIKE '오%';
    AND SUBSTR(PAT_NAME,1,1) = '오';

4	오환자2
5	오대식
6	오창규
7	오환자3


--2. 성별이 남자인 오씨성을 가진 환자중 1979년생이 아닌 조회

SELECT PAT_NAME FROM patient
WHERE PAT_GENDER = 'M'
    AND SUBSTR(PAT_NAME,1,1) = '오' --(시작위치를 0으로 적어도 첫번째부터 시작한다)
    AND NOT SUBSTR(PAT_BIRTH,1,4) = '1979';


5	오대식
6	오창규


--3. 생년월일이 1980년생 부터 1989년생 까지 환자 중 여자만 조회

SELECT PAT_CODE, PAT_NAME FROM patient
WHERE PAT_GENDER = 'F'
    AND PAT_BIRTH BETWEEN 19800101 AND 19891231;



1	오환자1
3	박환자
23	김성희
24	차은비
25	차은희
42	지유


--4. 환자이름이 4자이며 '오성'으로 끝나는 환자 중 생년월일이 2004년생 남자 환자만 조회

SELECT * FROM patient;

SELECT PAT_CODE, PAT_NAME FROM patient
WHERE substr(PAT_NAME, -2, 2) = '오성'
    AND pat_birth BETWEEN 20040101 AND 20041231
    AND length(PAT_NAME) = 4;



13	남궁오성


--5. 2000년생 여자 중 이름 뒤 두글자가 '환자'로 끝나지 않는 환자조회
SELECT * FROM patient;

SELECT PAT_CODE, PAT_NAME FROM patient
WHERE PAT_BIRTH BETWEEN 20000101 AND 20001231
    AND PAT_GENDER = 'F'
    AND substr(PAT_NAME,-2,2) != '환자';


28	한아름


--6. 환자이름이 4자인사람 중에 휴대폰 번호가 등록되어있지 않은 환자조회

SELECT * FROM patient;

SELECT PAT_CODE, PAT_NAME FROM patient
WHERE length(PAT_NAME) = 4 
    AND PAT_TEL IS NULL;


4	오환자2
7	오환자3
45	황보희라

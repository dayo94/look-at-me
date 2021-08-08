

SELECT * FROM patient; --환자
SELECT * FROM treat; --진료
SELECT * FROM doctor; --의사
SELECT * FROM department; --진료과
SELECT * FROM inpatient; --입원



--1. 2014년 1월 2일 내원환자 전체 정보조회
--   환자번호, 환자이름, 생년월일, 성별, 진료의사명, 진료과명
-- 스칼라 서브쿼리로 표현

SELECT PAT_CODE, PAT_NAME, PAT_BIRTH, PAT_GENDER, (
SELECT D.DOC_NAME
FROM TREAT T, DOCTOR D
WHERE T.DOC_CODE = D.DOC_CODE
AND T.TRT_YEAR = '2014'
AND T.TRT_DATE = '0102') DOC_NAME
FROM PATIENT;



SELECT DE.DEP_NAME
FROM DOCTOR D, DEPARTMENT DE
WHERE D.DEP_CODE = DE.DEP_CODE
AND 



--( SELECT T.TRT_YEAR, T.TRT_DATE, D.DOC_CODE
--FROM TREAT T, DOCTOR D
--WHERE T.DOC_CODE = D.DOC_CODE
--AND T.TRT_YEAR = '2014'
--AND T.TRT_DATE = '0102' ) DOCNAME






1	오환자1	19831203	F	황선생	외상과
2	김환자	19710108	M	강선생	비과
3	박환자	19890330	F	최선생	위장관외과
5	오대식	19801222	M	구선생	비과
10	백명	19790322	M	한선생	간담췌외과
16	김성민	20060903	M	김선생	성형외과
17	배창환	20030407	M	김선생	호흡기내과
18	김성식	20051219	M	하선생	혈액내과
21	송주희	19910225	F	최선생	소아외과
22	김도연	19921125	F	최선생	소아외과
24	차은비	19840302	F	박선생	혈액내과
27	안성댁	20091106	F	기선생	혈관이식외과
30	권환자	20040526	M	강선생	알레르기내과
34	송환자	19700713	F	구선생	혈관이식외과
35	황환자	19970323	M	한선생	간담췌외과
38	도진	20020523	F	조선생	척추외과
42	지유	19881010	F	구선생	비과
44	송학	19831129	M	황선생	대장항문외과
49	광성	20070627	M	조선생	비과
50	김애플	20001221	M	박선생	이과





--2.2014년 1월 2일 내원환자 중 부서테이블을 WHERE 절 SubQuery를 
--사용하여 조회
--   환자번호, 환자이름, 생년월일, 성별, 진료의사명, 진료과명

-- 단 외과계열 환자만조회('02xx')
-- where절 subquery

1	오환자1	19831203	F	황선생	외상과
3	박환자	19890330	F	최선생	위장관외과
10	백명	19790322	M	한선생	간담췌외과
21	송주희	19910225	F	최선생	소아외과
22	김도연	19921125	F	최선생	소아외과
27	안성댁	20091106	F	기선생	혈관이식외과
34	송환자	19700713	F	구선생	혈관이식외과
35	황환자	19970323	M	한선생	간담췌외과
44	송학	19831129	M	황선생	대장항문외과

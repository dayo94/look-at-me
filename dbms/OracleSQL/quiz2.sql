

SELECT * FROM patient; --환자
SELECT * FROM treat; --진료
SELECT * FROM doctor; --의사
SELECT * FROM department; --진료과
SELECT * FROM inpatient; --입원


--1. 2012년 1월 3일 내원환자 중 
-- 정형외과(코드:05xx)와 성형외과(코드:08xx)와 이비인후과(코드:13xx)
-- 환자조회

SELECT P.PAT_CODE, P.PAT_NAME 
FROM patient P, TREAT T, DOCTOR D, DEPARTMENT DE
WHERE P.PAT_CODE = T.PAT_CODE
AND T.DOC_CODE = D.DOC_CODE
AND D.DEP_CODE = DE.DEP_CODE
AND TRT_YEAR = 2012
AND TRT_DATE = 0103
AND substr(D.DEP_CODE,1,2) IN (05,08,13);


32	박환자
33	권이나
37	강성
42	지유
43	허민지


--2. 2012년 1월 3일 내원환자 중 내원 진료시간이 09:00 ~ 12:00 이고
-- 진료과가 정형외과(코드:05xx)와 성형외과(코드:08xx)와 이비인후과(코드:13xx)
-- 가 아닌 환자조회

SELECT P.PAT_CODE, P.PAT_NAME 
FROM patient P, TREAT T, DOCTOR D, DEPARTMENT DE
WHERE P.PAT_CODE = T.PAT_CODE
AND T.DOC_CODE = D.DOC_CODE
AND D.DEP_CODE = DE.DEP_CODE
AND TRT_YEAR = 2012
AND TRT_DATE = 0103
AND TRT_TIME BETWEEN 0900 AND 1200 
AND substr(D.DEP_CODE,1,2) NOT IN (05,08,13)
ORDER BY PAT_CODE;



30	권환자
35	황환자
39	고기리
40	유희애


--3. 2014년 1월 1일 내원환자 중 5명만 출력
-- (진료시간순서 상 마지막 진료환자 5명)

SELECT * FROM patient; --환자
SELECT * FROM treat; --진료
SELECT * FROM doctor; --의사
SELECT * FROM department; --진료과
SELECT * FROM inpatient; --입원

SELECT P.PAT_CODE, P.PAT_NAME FROM (
    SELECT ROWNUM rnum, TRT.*
    FROM ( 
        SELECT *
        FROM treat
        WHERE trt_year = '2014'
            AND trt_date = '0101'
        ORDER BY trt_time DESC
    ) TRT
) R, patient P
WHERE R.pat_code = P.pat_code
    AND rnum BETWEEN 1 AND 5
ORDER BY P.pat_code;

5	오대식
19	우별희
21	송주희
24	차은비
27	안성댁


-----------
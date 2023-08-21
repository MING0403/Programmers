-- 진료예약번호, 환자이름, 환자번호, 진료과코드, 의사이름, 진료예약일시 항목이 출력되도록 작성
SELECT APNT_NO,
      (SELECT PT_NAME FROM PATIENT AS P WHERE A.PT_NO = P.PT_NO) PT_NAME,
      PT_NO,
      MCDP_CD,
      (SELECT DR_NAME FROM DOCTOR AS D WHERE A.MDDR_ID = D.DR_ID) DR_NAME,
      APNT_YMD
FROM APPOINTMENT AS A
-- 2022년 4월 13일 취소되지 않은 흉부외과(CS) 진료 예약 내역을 조회
WHERE MCDP_CD = 'CS' AND APNT_CNCL_YN = 'N' AND DATE_FORMAT(APNT_YMD, '%Y-%m-%d') = '2022-04-13'
-- 진료예약일시를 기준으로 오름차순 정렬
ORDER BY APNT_YMD


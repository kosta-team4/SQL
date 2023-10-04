CREATE TABLE examinfo (
	qualgbcd  VARCHAR(1) , -- 자격구분 ,T:기술자격, S:전문자격
	qualgbnm VARCHAR(50) , -- 자격구분명 국가기술자격
	seriescd VARCHAR(2), -- 계열코드 01
	seriesnm VARCHAR(30), -- 계열명 기술사
	jmcd VARCHAR(4), -- 종목코드
	jmfldnm VARCHAR(200) NOT NULL, -- 종목명
	obligfldcd VARCHAR(2), -- 대직무분야코드
	obligfldnm VARCHAR(200), -- 대직무분야명
	mdobligfldcd VARCHAR(3), -- 중직무분야코드
	mdobligfldnm VARCHAR(200) -- 중직무분야명
);

CREATE TABLE examschedule(
	jmfldnm VARCHAR(100) NOT NULL, -- 종목명
	implplannm VARCHAR(200), -- 회차
	docregstartdt DATE, -- 필기원서접수시작일자
	docregenddt DATE, -- 필기원서접수종료일자
	docexamstartdt DATE, -- 필기시험시작일정
	docexamenddt DATE, -- 필기시험종료일자
	docpassdt DATE, -- 필기시험 합격(예정)자 발표
	docsubmitstartdt DATE, -- 응시자격서류제출시작일자
	docsubmitenddt DATE, -- 응시자격 서류제출종료일자
	pracregstartdt DATE,  -- 실기시험원서접수시작일자
	pracregenddt DATE, -- 실기시험원서접수종료일자
	pracexamstartdt DATE, -- 실기시험시작일자
	pracexamenddt DATE, -- 실기시험종료일자
	pracpassstartdt DATE, -- 합격자발표시작일자
	pracpassenddt DATE, -- 합격자발표종료일자
	obligfldcd VARCHAR(2), -- 대직무분야코드
	obligfldnm VARCHAR(200), -- 대직무분야명
	mdobligfldcd VARCHAR(3), -- 중직무분야코드
	mdobligfldnm VARCHAR(200) -- 중직무분야명
)

SELECT * FROM examinfo ei JOIN examschedule es USING(jmfldnm);

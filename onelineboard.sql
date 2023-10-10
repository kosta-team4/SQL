CREATE TABLE onelineboard (
	num int AUTO_INCREMENT PRIMARY KEY,
	subject VARCHAR(200),
	content VARCHAR(1000),
	LEVEL VARCHAR(5),
	writer VARCHAR(100) REFERENCES member(id),
	DATE date
);

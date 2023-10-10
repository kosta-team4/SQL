CREATE TABLE freeboard(
num INT AUTO_INCREMENT PRIMARY KEY,
SUBJECT VARCHAR(255),
content VARCHAR(255),
writedate DATE, -- jsp 에는 없는 데 필요한거같아서 넣었어요
commcount INT DEFAULT 0
fileurl VARCHAR(255),
writer VARCHAR(100) REFERENCES member(id),
viewcount INT DEFAULT 0,
);
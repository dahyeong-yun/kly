-- db 생성
CREATE TABLE MEMBER(
	MEMBER_ID NVARCHAR2(50) NOT NULL,
	MEMBER_PW NVARCHAR2(50) NOT NULL,
	MEMBER_EMAIL NVARCHAR2(50) NOT NULL,
	MEMBER_CHECKED NUMBER DEFAULT 0,
	MEMBER_DATE DATE NOT NULL,
	MEMBER_SUSPENDED NUMBER,
	PRIMARY KEY(MEMBER_ID)
);

CREATE TABLE BOARD(
    MEMBER_ID NVARCHAR2(50) NOT NULL,
    BOARD_NUM NUMBER NOT NULL,
	BOARD_SUBJECT NVARCHAR2(100) NOT NULL,
	BOARD_DATE DATE NOT NULL,
	BOARD_FILE NVARCHAR2(200),
	BOARD_URL NVARCHAR2(200),
    BOARD_READCOUNT NUMBER DEFAULT 0,
    BOARD_LIKECOUNT NUMBER DEFAULT 0,
    BOARD_BLIND NUMBER DEFAULT 0,
    BOARD_TAG NVARCHAR2(50),
    PRIMARY KEY(BOARD_NUM),
    CONSTRAINT FK_BOARD FOREIGN KEY(MEMBER_ID)
    REFERENCES MEMBER(MEMBER_ID)
);

SELECT * FROM MEMBER;
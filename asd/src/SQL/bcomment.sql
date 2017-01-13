CREATE TABLE BCOMMENT_MAKEUP(
BCOMMENTNUM NUMBER PRIMARY KEY,  --댓글 게시판 넘버, 시퀸스
USER_M VARCHAR2(50) NOT NULL, -- 사용자,이용작, 댓글 작성자
BOARDNUM NUMBER DEFAULT 0,  -- 외래키(BOARD_MAKEUP(BOARDNUM))
BCOMMENT VARCHAR2(200), --댓글
BDATE DATE,
FOREIGN KEY (BOARDNUM) REFERENCES BOARD_MAKEUP(BOARDNUM)
ON DELETE CASCADE
);
CREATE SEQUENCE BCOMMENT_SEQ;
COMMIT;

DROP TABLE BCOMMENT_MAKEUP;
DROP SEQUENCE BCOMMENT_SEQ;
SELECT *FROM BCOMMENT_MAKEUP;
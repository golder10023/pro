CREATE TABLE VCOMMENT_MAKEUP(
VCOMMENTNUM NUMBER PRIMARY KEY,  --댓글 게시판 넘버, 시퀸스
USER_M VARCHAR2(50) NOT NULL, -- 사용자,이용작, 댓글 작성자
VIDEONUM NUMBER DEFAULT 0,  -- 외래키(BOARD_MAKEUP(BOARDNUM))
VCOMMENT VARCHAR2(200), --댓글
VDATE DATE,
FOREIGN KEY (VIDEONUM) REFERENCES VIDEO_MAKEUP(VIDEONUM)
ON DELETE CASCADE
);
CREATE SEQUENCE VCOMMENT_SEQ;
COMMIT;

DROP TABLE VCOMMENT_MAKEUP;
DROP SEQUENCE VCOMMENT_SEQ;
COMMIT;

SELECT *FROM VCOMMENT_MAKEUP;
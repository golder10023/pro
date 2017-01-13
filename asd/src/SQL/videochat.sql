CREATE TABLE VIDEOCHAT(
USER_M VARCHAR2(50) PRIMARY KEY,
SERIAL VARCHAR2(50),
YN VARCHAR2(10)
);
CREATE SEQUENCE VIDEOCHAT_SEQ;

COMMIT;

SELECT *FROM VIDEOCHAT;


delete from videochat where user_m='golder1023';
delete from videochat where user_m='hot1023';

drop table VIDEOCHAT;
COMMIT;
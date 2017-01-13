CREATE TABLE JOIN(
EMAIL VARCHAR2(50),
USER_M VARCHAR2(50),
PASSWORD VARCHAR2(50),
GRADE VARCHAR2(20),
YN VARCHAR2(20)
);
CREATE SEQUENCE JOIN;
commit;


update join set grade = 'manager',user_m='golder1023' where email = 'golder1023@naver.com';
drop table JOIN;
commit;


select *from join;
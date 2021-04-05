select * from mamber;

insert into mamber values('1',password('1111'),'긴상건',30,'남자','sksk@sksk');
insert into mamber values('admin',password('rootroot'),'이종윤',30,'남자','sksk@sksk');
DELETE FROM native_jdbc.mamber
WHERE id='java32';

select id, password, name, age, gender, email
from mamber where id = 1 and password = password('1111'); 
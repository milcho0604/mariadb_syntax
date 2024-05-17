-- insert into : 데이터 삽입
insert into 테이블명(컬럼1, 컬럼2, 컬럼3) values(데이터1, 데이터2, 데이터3);
-- id, name, email -> author 1건 추가
insert into author(id, name, email) values(1, 'milcho', 'milcho0604@gmail.com');

-- select : 데이터 조회, * : 모든 컬럼 조회
select * from author;

-- id, title, content, author_id -> post에 1건 추가
insert into posts(id, title, content, author_id) values(1, 'milcho', 'new_line', 1);

-- 테이블 제약조건 조회
select * from information_schema.key_column_usage where table_name = 'posts';

-- insert문을 통해 author데이터 4개 정도 추가, post 데이터 5개 추가(1개 정도는 익명)
insert into author(id,name, email) values(2, '홍길동', 'aka@test.com');
insert into post(id, title, contents, author_id) values(2, '구렁이', 'solt',2);

-- update 테이블명 set 컬럼명1 = 데이터1, 컬럼명2 = 데이터2 where id = 1;
-- where문을 빠뜨리게 될 경우, 모든 데이터에 update문이 실행됨에 유의.
update author set email = 'okay@naver.com' where id = 2;

-- delete from 테이블명 where 조건
-- where 조건이 생략될 경우 모든 데이터가 삭제됨에 유의.
delete from author where id =5;

-- SELECT의 다양한 조화방법;
select * from author;
select * from author where id =1;
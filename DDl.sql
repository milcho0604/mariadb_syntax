-- 데이터 베이스 접속
mariadb -u root -p

docker exec -it my_mariadb mariadb -u root -p


-- 스키마(database) 목록조회
show databases;

-- (스키마)데이터베이스 생성
CREATE DATABASE board;

-- 데이터 베이스 선택
use board;

-- 테이블 조회
show tables;
drop table if exists role_table cascade;
create table role_table
(
    name varchar(50) not null,
	id serial not null constraint role_table_pk  primary key
);

drop table if exists user_table cascade;
create table user_table
(
	login    varchar(50),
	password varchar(500),
	role_id  integer  constraint user_table_role_table_id_fk  references role_table,
    id serial not null constraint user_table_pk  primary key
);

select * from role_table;
select * from user_table;

insert into role_table (NAME) VALUES ('ROLE_ADMIN');
insert into role_table (NAME) VALUES ('ROLE_PROFESSOR');
insert into role_table (NAME) VALUES ('ROLE_STUDENT');

UPDATE USER_TABLE SET ROLE_ID = 1 WHERE ID = 1;
UPDATE USER_TABLE SET ROLE_ID = 3 WHERE ID = 2;
UPDATE USER_TABLE SET ROLE_ID = 2 WHERE ID = 3;

UPDATE role_table SET name = 'ROLE_ADMIN' WHERE ID = 1;
UPDATE role_table SET name = 'ROLE_PROFESSOR'  WHERE ID = 2;
UPDATE role_table SET name = 'ROLE_STUDENT' WHERE ID = 3;



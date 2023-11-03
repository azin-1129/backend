CREATE DATABASE `motif_db` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE motif_db;

create table `member`
(
    id       int         not null auto_increment,
    email    varchar(50) not null,
    password varchar(30) not null,
    nickname varchar(20) not null,
    primary key (id)
);

insert into member(email, password, nickname)
values
    ('test1@test.com', '123123', '테스터1'),
    ('test2@test.com', '123123', '테스터2'),
    ('test3@test.com', '123123', '테스터3'),
    ('test4@test.com', '123123', '테스터4'),
    ('test5@test.com', '123123', '테스터5');


create table `board`
(
    id          int          not null auto_increment,
    member_id   int          not null,
    title       varchar(30)  not null,
    content     varchar(200) not null,
    created_at  timestamp    not null default current_timestamp,
    modified_at timestamp    not null default current_timestamp,
    primary key (id),
    foreign key (member_id) references member (id)
);

insert into board(member_id, title, content)
values
    (1, 'title1', 'content1'),
    (2, 'title2', 'content2'),
    (3, 'title3', 'content3'),
    (4, 'title4', 'content4'),
    (5, 'title5', 'content5');



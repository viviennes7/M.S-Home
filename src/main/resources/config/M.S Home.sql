create sequence player_sq;

create table player(
  PLAYER_SQ NUMBER(5,0) primary key,
  PLAYER_NAME VARCHAR2(60) not null,
  PLAYER_ID VARCHAR2(60) NOT NULL UNIQUE,
  PLAYER_PASSWORD VARCHAR2(30) NOT NULL,
  PLAYER_BIRTHDATE VARCHAR2(20)
);
ALTER TABLE player MODIFY PLAYER_BIRTHDATE NULL;

alter table player add(player_url varchar2(200));
alter table player add(player_introduction varchar2(200));
alter table player add(player_bg_url varchar2(200));
alter table player modify(player_url default 'defaultImg.jpg');
alter table player modify(player_bg_url default 'defaultBackImg.jpg');


create sequence life_board_sq;

create table life_board(
 life_board_sq number(5,0) primary key,
 PLAYER_SQ number(5,0) references player(player_sq),
 life_board_subject varchar2(60) not null,
 life_board_time DATE DEFAULT SYSDATE NOT NULL
);

create sequence life_img_sq;

create table life_img(
 life_img_sq number(5,0) primary key, 
 life_board_sq number(5,0) references life_board(life_board_sq),
 board_STORED_NAME VARCHAR2(40) unique not null
);

create sequence portfolio_sq;

create table portfolio(
 portfolio_sq number(5,0) primary key,
 player_sq number(5,0) references player(player_sq) NOT NULL,
 portfolio_subject varchar2(90) not null,
 portfolio_strapline1 varchar2(300),
 portfolio_strapline2 varchar2(300),
 portfolio_strapline3 varchar2(300),
 portfolio_strapline4 varchar2(300),
 portfolio_strapline5 varchar2(300),
 portfolio_content varchar2(4000),
 portfolio_img varchar2(500),
 portfolio_file varchar2(500)
);
alter table portfolio add(portfolio_origin_file varchar2(200));

create sequence visitor_sq;
 
create table visitor(
 visitor_sq number(5,0) primary key,
 PLAYER_SQ number(5,0) references player(player_sq),
 visitor_subject varchar2(60) not null,
 visitor_content varchar2(600),
 visitor_time date default sysdate not null
);
 
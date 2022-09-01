drop table if exists Cart CASCADE;
drop table if exists Product CASCADE;
drop table if exists USERS CASCADE;

create table Cart (
    cart_id bigint generated by default as identity,
    primary key (cart_id)
);

create table Product (
   product_id bigint generated by default as identity,
    age integer not null,
    agency varchar(255),
    amount bigint not null,
    cartCount integer,
    interestRate Decimal(6,3) not null,
    job varchar(255),
    name varchar(255),
    repayPeriod bigint not null,
    cart_id bigint,
    primary key (product_id)
);

create table USERS (
   user_Id bigint generated by default as identity,
    createdDate timestamp,
    modifiedDate timestamp,
    age integer not null,
    job varchar(255),
    name varchar(255),
    password varchar(255),
    username varchar(255),
    cart_id bigint,
    primary key (user_Id)
);


alter table Product
   add constraint FKdoypnklcfpi3kbpfw845e9of4
   foreign key (cart_id)
   references Cart;

alter table USERS
   add constraint FKq4iff8ul3mx5xybcr10dtqooa
   foreign key (cart_id)
   references Cart;

INSERT INTO PRODUCT (agency, amount, interestRate, job, name, repayPeriod, age)
VALUES('FAST은행',2000000,1.5,'FREELANCER','프리랜서를 위한 대출',150, 30);
INSERT INTO PRODUCT (agency, amount, interestRate, job, name, repayPeriod, age)
VALUES('신한은행',5000000,3.5,'EMPLOYEE','직장인을 위한 긴급 비상금 대출',365, 30);
INSERT INTO PRODUCT (agency, amount, interestRate, job, name, repayPeriod, age)
VALUES('신한은행',3000000,1.5,'STUDENT','대학생을 위한 학자금 대출',730, 20);
INSERT INTO PRODUCT (agency, amount, interestRate, job, name, repayPeriod, age)
VALUES('농협은행',8000000,3.5,'FREELANCER','프리랜서들을 위한 코로나 긴급 지원 대출',365, 40);
INSERT INTO PRODUCT (agency, amount, interestRate, job, name, repayPeriod, age)
VALUES('국가장학재단',5000000,1.0,'STUDENT','저소득층 및 취약 계층 지원 대출 사업',1095, 10);
INSERT INTO PRODUCT (agency, amount, interestRate, job, name, repayPeriod, age)
VALUES('토스뱅크',10000000,3.2,'UNEMPLOYED','취업 준비생 및  미래의 꿈나무를  위한  대출 사업',730, 20);
INSERT INTO PRODUCT (agency, amount, interestRate, job, name, repayPeriod, age)
VALUES('신한은행',7000000,1.7,'EMPLOYEE','직장인을 위한 매직카 대출',1825, 30);
INSERT INTO PRODUCT (agency, amount, interestRate, job, name, repayPeriod, age)
VALUES('국민은행',200000000,1.5,'BUSINESS','사장님의 새희망홀씨 긴급생계자금',3650, 40);
INSERT INTO PRODUCT (agency, amount, interestRate, job, name, repayPeriod, age)
VALUES('한국장학재단',5000000,1.3,'STUDENT','농촌 출신 대학생을 위한 학자금 대출',2920, 20);
INSERT INTO PRODUCT (agency, amount, interestRate, job, name, repayPeriod, age)
VALUES('신한은행',500000,1.6,'FREELANCER','프리랜서 든든 신용대출',2920, 30);
INSERT INTO PRODUCT (agency, amount, interestRate, job, name, repayPeriod, age)
VALUES('카카오뱅크',3000000,1.8,'UNEMPLOYED','취업 햇살론',2555, 20);
INSERT INTO PRODUCT (agency, amount, interestRate, job, name, repayPeriod, age) 
VALUES('농협은행',3000000,3.12,'BUSINESS','개인사업자 대출',150,20);
INSERT INTO PRODUCT (agency, amount, interestRate, job, name, repayPeriod, age) 
VALUES('농협은행',1500000,1.78,'EMPLOYEE','근로자안정금 대출',73,32);
INSERT INTO PRODUCT (agency, amount, interestRate, job, name, repayPeriod, age) 
VALUES('하나은행',4500000,3.46,'STUDENT','학자금 대출',150,20);
INSERT INTO PRODUCT (agency, amount, interestRate, job, name, repayPeriod, age) 
VALUES('신한은행',1200000,2.43,'FREELANCER','프리랜서를 위한 신용대출',150,34);
INSERT INTO PRODUCT (agency, amount, interestRate, job, name, repayPeriod, age) 
VALUES('우리은행',400000,4.5,'UNEMPLOYED','취준생을 위한 청년대출',300,27);

INSERT INTO USERS (age, job, name, password, username) 
VALUES(20,'UNEMPLOYED','aa맨','$2a$10$h7.nKr37ZcmskzJR7DKFteXRMvutoh5Wgg.Gx63wYi7wJUR1mAT2.','aaa');

INSERT INTO CART(cart_id) VALUES(1);
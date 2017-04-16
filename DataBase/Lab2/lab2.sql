-- 6
CREATE SEQUENCE SEQ_MESSURE
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE SEQ_DELIVER
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE SEQ_CATERER
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE SEQ_EMPLOYER
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE SEQ_GROUP
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE SEQ_MATERIAL
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE SEQ_SECTION
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE SEQ_INPRICE
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE SEQ_SUPPLY
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE SEQ_SURPLUS
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE SEQ_STORE
  START WITH 1
  INCREMENT BY 1;

-- 7
INSERT INTO T_MESSURE (ID_MESSURE, NAME)
  VALUES (SEQ_MESSURE.NEXTVAL, 'ШТ');
INSERT INTO T_MESSURE (ID_MESSURE, NAME)
  VALUES (SEQ_MESSURE.NEXTVAL, 'М');
INSERT INTO T_MESSURE (ID_MESSURE, NAME)
  VALUES (SEQ_MESSURE.NEXTVAL, 'КГ');
INSERT INTO T_MESSURE (ID_MESSURE, NAME)
  VALUES (SEQ_MESSURE.NEXTVAL, 'МЛ');
INSERT INTO T_MESSURE (ID_MESSURE, NAME)
  VALUES (SEQ_MESSURE.NEXTVAL, 'СМ');

INSERT INTO T_DELIVER (ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES (SEQ_DELIVER.NEXTVAL, 1, 1, 1, '10.04.2017');
INSERT INTO T_DELIVER (ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES (SEQ_DELIVER.NEXTVAL, 2, 2, 2, '11.04.2017');
INSERT INTO T_DELIVER (ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES (SEQ_DELIVER.NEXTVAL, 3, 3, 3, '12.04.2017');
INSERT INTO T_DELIVER (ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES (SEQ_DELIVER.NEXTVAL, 4, 4, 4, '13.04.2017');
INSERT INTO T_DELIVER (ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES (SEQ_DELIVER.NEXTVAL, 5, 5, 5, '14.04.2017');

INSERT INTO T_CATERER (ID_CATERER, NAME, LEGAL_ADDRES, PHYSICAK_ADDERS, PHONE, FAX, E_MAIL)
  VALUES (SEQ_CATERER.NEXTVAL, 'Поставщик 1', 'Страна, город, улица, дом','Страна, город, улица, дом', 89000000000, NULL, 'mail1@mail.ru');
INSERT INTO T_CATERER (ID_CATERER, NAME, PHONE, FAX, LEGAL_ADDRES, ACTUAL_ADDERS, E_MAIL)
  VALUES (SEQ_CATERER.NEXTVAL, 'Поставщик 2', 'Страна, город, улица, дом','Страна, город, улица, дом', 89000000000, NULL, 'mail2@mail.ru');
INSERT INTO T_CATERER (ID_CATERER, NAME, PHONE, FAX, LEGAL_ADDRES, ACTUAL_ADDERS, E_MAIL)
  VALUES (SEQ_CATERER.NEXTVAL, 'Поставщик 3', 'Страна, город, улица, дом','Страна, город, улица, дом', 89000000000, NULL, 'mail3@mail.ru');
INSERT INTO T_CATERER (ID_CATERER, NAME, PHONE, FAX, LEGAL_ADDRES, ACTUAL_ADDERS, E_MAIL)
  VALUES (SEQ_CATERER.NEXTVAL, 'Поставщик 4', 'Страна, город, улица, дом','Страна, город, улица, дом', 89000000000, NULL, 'mail4@mail.ru');
INSERT INTO T_CATERER (ID_CATERER, NAME, PHONE, FAX, LEGAL_ADDRES, ACTUAL_ADDERS, E_MAIL)
  VALUES (SEQ_CATERER.NEXTVAL, 'Поставщик 5', 'Страна, город, улица, дом','Страна, город, улица, дом', 89000000000, NULL, 'mail5@mail.ru');

INSERT INTO T_EMPLOYER (ID_EMPLOYER, SURNAME, NAME, FATHER_NAME)
  VALUES (SEQ_EMPLOYER.NEXTVAL, 'Фамилия', 'Имя', 'Отчество');
INSERT INTO T_EMPLOYER (ID_EMPLOYER, SURNAME, NAME, FATHER_NAME)
  VALUES (SEQ_EMPLOYER.NEXTVAL, 'Фамилия', 'Имя', 'Отчество');
INSERT INTO T_EMPLOYER (ID_EMPLOYER, SURNAME, Name, FATHER_NAME)
  VALUES (SEQ_EMPLOYER.NEXTVAL, 'Фамилия', 'Имя', 'Отчество');
INSERT INTO T_EMPLOYER (ID_EMPLOYER, SURNAME, Name, FATHER_NAME)
  VALUES (SEQ_EMPLOYER.NEXTVAL, 'Фамилия', 'Имя', 'Отчество');
INSERT INTO T_EMPLOYER (ID_EMPLOYER, SURNAME, Name, FATHER_NAME)
  VALUES (SEQ_EMPLOYER.NEXTVAL, 'Фамилия', 'Имя', 'Отчество');

INSERT INTO T_GROUP (ID_GROUP, NAME)
  VALUES (SEQ_GROUP.NEXTVAL, 'Группа 1');
INSERT INTO T_GROUP (ID_GROUP, NAME)
  VALUES (SEQ_GROUP.NEXTVAL, 'Группа 2');
INSERT INTO T_GROUP (ID_GROUP, NAME)
  VALUES (SEQ_GROUP.NEXTVAL, 'Группа 3');
INSERT INTO T_GROUP (ID_GROUP, NAME)
  VALUES (SEQ_GROUP.NEXTVAL, 'Группа 4');
INSERT INTO T_GROUP (ID_GROUP, NAME)
  VALUES (SEQ_GROUP.NEXTVAL, 'Группа 5');

INSERT INTO T_MATERIAL (ID_MATERIAL, NAME, ID_MESSURE, ID_GROUP)
  VALUES (SEQ_MATERIAL.NEXTVAL, 'Материал 1', 1, 1);
INSERT INTO T_MATERIAL (ID_MATERIAL, NAME, ID_MESSURE, ID_GROUP)
  VALUES (SEQ_MATERIAL.NEXTVAL, 'Материал 2', 2, 2);
INSERT INTO T_MATERIAL (ID_MATERIAL, NAME, ID_MESSURE, ID_GROUP)
  VALUES (SEQ_MATERIAL.NEXTVAL, 'Материал 3', 3, 3);
INSERT INTO T_MATERIAL (ID_MATERIAL, NAME, ID_MESSURE, ID_GROUP)
  VALUES (SEQ_MATERIAL.NEXTVAL, 'Материал 4', 4, 4);
INSERT INTO T_MATERIAL (ID_MATERIAL, NAME, ID_MESSURE, ID_GROUP)
  VALUES (SEQ_MATERIAL.NEXTVAL, 'Материал 5', 5, 5);

INSERT INTO T_SECTION (ID_SECTION, NAME, ID_EMPLOYER)
  VALUES (SEQ_SECTION.NEXTVAL, 'Цех 1', 1);
INSERT INTO T_SECTION (ID_SECTION, NAME, ID_EMPLOYER)
  VALUES (SEQ_SECTION.NEXTVAL, 'Цех 2', 2);
INSERT INTO T_SECTION (ID_SECTION, NAME, ID_EMPLOYER)
  VALUES (SEQ_SECTION.NEXTVAL, 'Цех 3', 3);
INSERT INTO T_SECTION (ID_SECTION, NAME, ID_EMPLOYER)
  VALUES (SEQ_SECTION.NEXTVAL, 'Цех 4', 4);
INSERT INTO T_SECTION (ID_SECTION, NAME, ID_EMPLOYER)
  VALUES (SEQ_SECTION.NEXTVAL, 'Цех 4', 5);

INSERT INTO T_INPRICE (ID_MATERIAL, PRICE_DATE, PRICE)
  VALUES (SEQ_INPRICE.NEXTVAL, '10.04.2017', 1);
INSERT INTO T_INPRICE (ID_MATERIAL, PRICE_DATE, PRICE)
  VALUES (SEQ_INPRICE.NEXTVAL, '11.04.2017', 2);
INSERT INTO T_INPRICE (ID_MATERIAL, PRICE_DATE, PRICE)
  VALUES (SEQ_INPRICE.NEXTVAL, '12.04.2017', 3);
INSERT INTO T_INPRICE (ID_MATERIAL, PRICE_DATE, PRICE)
  VALUES (SEQ_INPRICE.NEXTVAL, '13.04.2017', 4);
INSERT INTO T_INPRICE (ID_MATERIAL, PRICE_DATE, PRICE)
  VALUES (SEQ_INPRICE.NEXTVAL, '14.04.2017', 5);

INSERT INTO T_SUPPLY (ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME)
  VALUES (SEQ_SUPPLY.NEXTVAL, 1, 1, 1, '10.04.2017', 1);
INSERT INTO T_SUPPLY (ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME)
  VALUES (SEQ_SUPPLY.NEXTVAL, 2, 2, 2, '11.04.2017', 2);
INSERT INTO T_SUPPLY (ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME)
  VALUES (SEQ_SUPPLY.NEXTVAL, 3, 3, 3, '12.04.2017', 3);
INSERT INTO T_SUPPLY (ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME)
  VALUES (SEQ_SUPPLY.NEXTVAL, 4, 4, 4, '13.04.2017', 4);
INSERT INTO T_SUPPLY (ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME)
  VALUES (SEQ_SUPPLY.NEXTVAL, 5, 5, 5, '14.04.2017', 5);

INSERT INTO T_SURPLUS (ID_MATERIAL, ID_STORE, VOLUME)
  VALUES (1, 1, 1);
INSERT INTO T_SURPLUS (ID_MATERIAL, ID_STORE, VOLUME)
  VALUES (2, 2, 2);
INSERT INTO T_SURPLUS (ID_MATERIAL, ID_STORE, VOLUME)
  VALUES (3, 3, 3);
INSERT INTO T_SURPLUS (ID_MATERIAL, ID_STORE, VOLUME)
  VALUES (4, 4, 4);
INSERT INTO T_SURPLUS (ID_MATERIAL, ID_STORE, VOLUME)
  VALUES (5, 5, 5);

INSERT INTO T_STORE (ID_STORE, NAME)
  VALUES (SEQ_STORE.NEXTVAL, 'Склад 1');
INSERT INTO T_STORE (ID_STORE, NAME)
  VALUES (SEQ_STORE.NEXTVAL, 'Склад 2');
INSERT INTO T_STORE (ID_STORE, NAME)
  VALUES (SEQ_STORE.NEXTVAL, 'Склад 3');
INSERT INTO T_STORE (ID_STORE, NAME)
  VALUES (SEQ_STORE.NEXTVAL, 'Склад 4');
INSERT INTO T_STORE (ID_STORE, NAME)
  VALUES (SEQ_STORE.NEXTVAL, 'Склад 5');


-- 8
DELETE FROM T_INPRICE
  WHERE PRICE_DATE < '31.12.2000';

-- 9
DELETE FROM T_MESSURE
  WHERE NAME LIKE '_';

-- 10
UPDATE T_SURPLUS 
 SET VOLUME = 0 WHERE ID_STORE LIKE 5;

-- 11, даты рождения и СП до этого в задания не было. Я заменю имя!
UPDATE T_EMPLOYER
  SET NAME = 'Вадим' WHERE ID_EMPLOYER LIKE 5;

-- 12
UPDATE T_CATERER
  SET PHONE = 89111111111 WHERE ID_CATERER LIKE 5;

-- 13
UPDATE T_INPRICE 
  SET PRICE = 0.85 * PRICE WHERE PRICE_DATE LIKE '%2017'
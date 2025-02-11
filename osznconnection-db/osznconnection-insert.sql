-- --------------------------------
-- Current database version
-- --------------------------------
INSERT INTO `update` (`version`) VALUE ('20140729_1016_0.3.4');
-- --------------------------------

-- --------------------------------
-- Sequence
-- --------------------------------
INSERT INTO `sequence` (`sequence_name`, `sequence_value`) VALUES
('ownership',1), ('ownership_string_culture',1),
('privilege',1), ('privilege_string_culture',1);
-- --------------------------------
-- Organization type
-- --------------------------------
INSERT INTO `organization_type`(`object_id`) VALUES (2),(3);
INSERT INTO `organization_type_string_culture`(`id`, `locale_id`, `value`) VALUES (2, 1, UPPER('ОСЗН')), (2, 2,UPPER('ОСЗН')),
(3, 1, UPPER('Модуль начислений')), (3, 2,UPPER('Центр нарахувань'));
INSERT INTO `organization_type_attribute`(`attribute_id`, `object_id`, `attribute_type_id`, `value_id`, `value_type_id`) VALUES (1,2,2300,2,2300),(1,3,2300,3,2300);

-- --------------------------------
-- Organization
-- --------------------------------

-- Reference to jdbc data source. It is calculation center only attribute. --
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (914, 1, UPPER('Ресурс доступа к МН')), (914, 2, UPPER('Ресурс доступа к МН'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (913, 900, 1, 914, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (913, 913, UPPER('string'));

-- Reference to `service_association` helper table. It is user organization only attribute. --
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (915, 1, UPPER('Ассоцияции тип услуги - модуль начислений')), (915, 2, UPPER('Ассоцияции тип услуги - модуль начислений'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (914, 900, 1, 915, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (914, 914, 'service_association');

-- -------------------------------
-- Request files paths attributes
-- -------------------------------

-- Load payments/benefits directory. It is OSZN only attribute. --
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (916, 1, UPPER('Директория входящих запросов на субсидию')), (916, 2, UPPER('Директория входящих запросов на субсидию'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (915, 900, 0, 916, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (915, 915, UPPER('string'));

-- Save payments/benefits directory. It is OSZN only attribute. --
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (917, 1, UPPER('Директория исходящих ответов на запросы на субсидию')), (917, 2, UPPER('Директория исходящих ответов на запросы на субсидию'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (916, 900, 0, 917, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (916, 916, UPPER('string'));

-- Load actual payments directory. It is OSZN only attribute. --
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (918, 1, UPPER('Директория входящих запросов фактического начисления')), (918, 2, UPPER('Директория входящих запросов фактического начисления'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (917, 900, 0, 918, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (917, 917, UPPER('string'));

-- Save actual payments directory. It is OSZN only attribute. --
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (919, 1, UPPER('Директория исходящих ответов на запросы фактического начисления')), (919, 2, UPPER('Директория исходящих ответов на запросы фактического начисления'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (918, 900, 0, 919, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (918, 918, UPPER('string'));

-- Load subsidies directory. It is OSZN only attribute. --
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (920, 1, UPPER('Директория входящих файлов субсидий')), (920, 2, UPPER('Директория входящих файлов субсидий'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (919, 900, 0, 920, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (919, 919, UPPER('string'));

-- Save subsidies directory. It is OSZN only attribute. --
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (921, 1, UPPER('Директория исходящих файлов субсидий')), (921, 2, UPPER('Директория исходящих файлов субсидий'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (920, 900, 0, 921, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (920, 920, UPPER('string'));

-- Load dwelling characteristics directory. It is OSZN only attribute. --
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (922, 1, UPPER('Директория входящих файлов характеристик жилья')), (922, 2, UPPER('Директория входящих файлов характеристик жилья'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (921, 900, 0, 922, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (921, 921, UPPER('string'));

-- Save dwelling characteristics directory. It is OSZN only attribute. --
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (923, 1, UPPER('Директория исходящих файлов характеристик жилья')), (923, 2, UPPER('Директория исходящих файлов характеристик жилья'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (922, 900, 0, 923, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (922, 922, UPPER('string'));

-- Load facility service type directory. It is OSZN only attribute. --
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (924, 1, UPPER('Директория входящих файлов-запросов видов услуг')), (924, 2, UPPER('Директория входящих файлов-запросов видов услуг'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (923, 900, 0, 924, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (923, 923, UPPER('string'));

-- Save facility service type directory. It is OSZN only attribute. --
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (925, 1, UPPER('Директория исходящих файлов-запросов видов услуг')), (925, 2, UPPER('Директория исходящих файлов-запросов видов услуг'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (924, 900, 0, 925, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (924, 924, UPPER('string'));

-- References directory. It is OSZN only attribute. --
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (926, 1, UPPER('Директория справочников')), (926, 2, UPPER('Директория справочников'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (925, 900, 0, 926, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (925, 925, UPPER('string'));

-- EDRPOU(ЕДРПОУ) attribute. It is user organization only attribute. --
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (927, 1, UPPER('ЕДРПОУ')), (927, 2, UPPER('ЕДРПОУ'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (926, 900, 1, 927, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (926, 926, UPPER('string'));

-- Root directory for loading and saving request files. It is user organization only attribute. --
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (928, 1, UPPER('Корневой каталог для файлов запросов')), (928, 2, UPPER('Корневой каталог для файлов запросов'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (927, 900, 1, 928, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (927, 927, UPPER('string'));

-- Save facility form2 directory. It is OSZN only attribute. --
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (929, 1, UPPER('Директория исходящих файлов форма-2 льгота')), (929, 2, UPPER('Директория исходящих файлов форма-2 льгота'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (928, 900, 0, 929, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (928, 928, UPPER('string'));

-- Export subsidy directory. It is OSZN only attribute. --
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (930, 1, UPPER('Корневой каталог для экспорта файлов'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (930, 900, 0, 930, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (930, 930, UPPER('string'));

-- --------------------------------
-- Ownership
-- --------------------------------
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (1100, 1, 'Форма собственности'), (1100, 2, 'Форма власності');
INSERT INTO `entity`(`id`, `entity_table`, `entity_name_id`, `strategy_factory`) VALUES (1100, 'ownership', 1100, '');
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (1101, 1, UPPER('Название')), (1101, 2, UPPER('Назва'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (1100, 1100, 1, 1101, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (1100, 1100, UPPER('string_culture'));

-- --------------------------------
-- Forms of ownerships
-- --------------------------------
INSERT INTO `ownership`(`object_id`) VALUES (1),(2),(3),(4),(5),(6);
INSERT INTO `ownership_string_culture`(`id`, `locale_id`, `value`) VALUES (1, 1, UPPER('мiсцевих Рад')), (1, 2,UPPER('мiсцевих Рад')),
(2, 1, UPPER('кооперативна')), (2, 2, UPPER('кооперативна')), (3, 1, UPPER('вiдомча')), (3, 2, UPPER('вiдомча')),
(4, 1, UPPER('громадська')), (4, 2, UPPER('громадська')), (5, 1, UPPER('приватна')), (5, 2, UPPER('приватна')),
(6, 1, UPPER('приватизована')), (6, 2, UPPER('приватизована'));
INSERT INTO `ownership_attribute`(`attribute_id`, `object_id`, `attribute_type_id`, `value_id`, `value_type_id`) VALUES
(1,1,1100,1,1100),(1,2,1100,2,1100),(1,3,1100,3,1100),(1,4,1100,4,1100),(1,5,1100,5,1100),(1,6,1100,6,1100);

-- --------------------------------
-- Privilege
-- --------------------------------

INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (1200, 1, 'Льгота'), (1200, 2, 'Привілей');
INSERT INTO `entity`(`id`, `entity_table`, `entity_name_id`, `strategy_factory`) VALUES (1200, 'privilege', 1200, '');
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (1201, 1, UPPER('Название')), (1201, 2, UPPER('Назва'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (1200, 1200, 1, 1201, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (1200, 1200, UPPER('string_culture'));
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (1202, 1, UPPER('Код')), (1202, 2, UPPER('Код'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (1201, 1200, 1, 1202, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (1201, 1201, UPPER('string'));

-- Privileges
INSERT INTO `privilege`(`object_id`) VALUES
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),
(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),
(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),
(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104);
INSERT INTO `privilege_string_culture`(`id`, `locale_id`, `value`) VALUES
(1,1,UPPER('УЧАСТНИК БОЕВЫХ ДЕЙСТВИЙ')), (1,2,UPPER('УЧАСТНИК БОЕВЫХ ДЕЙСТВИЙ')), (2,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('1')),
(3,1,UPPER('УЧАСТНИК ВОЙНЫ')), (3,2,UPPER('УЧАСТНИК ВОЙНЫ')), (4,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('2')),
(5,1,UPPER('ЧЛЕН СЕМЬИ ПОГИБШЕГО/УМЕРШЕГО ВЕТЕРАНА ВОЙНЫ')), (5,2,UPPER('ЧЛЕН СЕМЬИ ПОГИБШЕГО/УМЕРШЕГО ВЕТЕРАНА ВОЙНЫ')), (6,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('3')),
(7,1,UPPER('ИНВАЛИД ВОЙНЫ ПЕРВОЙ ГРУППЫ')), (7,2,UPPER('ИНВАЛИД ВОЙНЫ ПЕРВОЙ ГРУППЫ')), (8,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('11')),
(9,1,UPPER('ИНВАЛИД ВОЙНЫ ВТОРОЙ ГРУППЫ')), (9,2,UPPER('ИНВАЛИД ВОЙНЫ ВТОРОЙ ГРУППЫ')), (10,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('12')),
(11,1,UPPER('ИНВАЛИД ВОЙНЫ ТРЕТЬЕЙ ГРУППЫ')), (11,2,UPPER('ИНВАЛИД ВОЙНЫ ТРЕТЬЕЙ ГРУППЫ')), (12,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('13')),
(13,1,UPPER('РЕБЕНОК ВОЙНЫ')), (13,2,UPPER('РЕБЕНОК ВОЙНЫ')), (14,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('15')),
(15,1,UPPER('ЛИЦО С ОСОБЫМИ ЗАСЛУГАМИ')), (15,2,UPPER('ЛИЦО С ОСОБЫМИ ЗАСЛУГАМИ')), (16,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('20')),
(17,1,UPPER('РОДИТЕЛИ УМЕРШЕГО ЛИЦА С ОСОБЫМИ ЗАСЛУГАМИ')), (17,2,UPPER('РОДИТЕЛИ УМЕРШЕГО ЛИЦА С ОСОБЫМИ ЗАСЛУГАМИ')), (18,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('22')),
(19,1,UPPER('ВДОВА/ВДОВЕЦ ЛИЦА С ОСОБЫМИ ЗАСЛУГАМИ')), (19,2,UPPER('ВДОВА/ВДОВЕЦ ЛИЦА С ОСОБЫМИ ЗАСЛУГАМИ')), (20,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('23')),
(21,1,UPPER('ВДОВА/ВДОВЕЦ ЛИЦА С ОСОБЫМИ ТРУДОВЫМИ ЗАСЛУГАМИ')), (21,2,UPPER('ВДОВА/ВДОВЕЦ ЛИЦА С ОСОБЫМИ ТРУДОВЫМИ ЗАСЛУГАМИ')), (22,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('26')),
(23,1,UPPER('ЛИЦО С ОСОБЫМИ ТРУДОВЫМИ ЗАСЛУГАМИ')), (23,2,UPPER('ЛИЦО С ОСОБЫМИ ТРУДОВЫМИ ЗАСЛУГАМИ')), (24,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('30')),
(25,1,UPPER('РОДИТЕЛИ УМЕРШЕГО ЛИЦА С ОСОБЫМИ ТРУДОВЫМИ ЗАСЛУГАМИ')), (25,2,UPPER('РОДИТЕЛИ УМЕРШЕГО ЛИЦА С ОСОБЫМИ ТРУДОВЫМИ ЗАСЛУГАМИ')), (26,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('32')),
(27,1,UPPER('ВЕТЕРАН ТРУДА')), (27,2,UPPER('ВЕТЕРАН ТРУДА')), (28,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('33')),
(29,1,UPPER('ПЕНСИОНЕР ПО ВОЗРАСТУ')), (29,2,UPPER('ПЕНСИОНЕР ПО ВОЗРАСТУ')), (30,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('34')),
(31,1,UPPER('МНОГОДЕТНЫЕ СЕМЬИ')), (31,2,UPPER('МНОГОДЕТНЫЕ СЕМЬИ')), (32,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('35')),
(33,1,UPPER('ЧЛЕН  МНОГОДЕТНОЙ СЕМЬИ')), (33,2,UPPER('ЧЛЕН  МНОГОДЕТНОЙ СЕМЬИ')), (34,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('36')),
(35,1,UPPER('ВЕТЕРАН СЛУЖБЫ ГРАЖДАНСКОЙ ЗИЩИТЫ')), (35,2,UPPER('ВЕТЕРАН СЛУЖБЫ ГРАЖДАНСКОЙ ЗИЩИТЫ')), (36,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('37')),
(37,1,UPPER('ВЕТЕРАН ГОСУДАРСТВЕННОЙ КРИМ.-ИСПОЛНИТЕЛЬНОЙ СЛУЖБЫ')), (37,2,UPPER('ВЕТЕРАН ГОСУДАРСТВЕННОЙ КРИМ.-ИСПОЛНИТЕЛЬНОЙ СЛУЖБЫ')), (38,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('39')),
(39,1,UPPER('СЕЛЬСКИЙ ПЕДАГОГ НА ПЕНСИИ')), (39,2,UPPER('СЕЛЬСКИЙ ПЕДАГОГ НА ПЕНСИИ')), (40,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('40')),
(41,1,UPPER('СЕЛЬСКИЙ БИБЛИОТЕКАРЬ НА ПЕНСИИ')), (41,2,UPPER('СЕЛЬСКИЙ БИБЛИОТЕКАРЬ НА ПЕНСИИ')), (42,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('41')),
(43,1,UPPER('СЕЛЬСКИЙ СПЕЦИАЛИСТ ПО ЗАЩИТЕ РАСТЕНИЙ НА ПЕНСИИ')), (43,2,UPPER('СЕЛЬСКИЙ СПЕЦИАЛИСТ ПО ЗАЩИТЕ РАСТЕНИЙ НА ПЕНСИИ')), (44,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('42')),
(45,1,UPPER('СЕЛЬСКИЙ МЕДИК НА ПЕНСИИ')), (45,2,UPPER('СЕЛЬСКИЙ МЕДИК НА ПЕНСИИ')), (46,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('43')),
(47,1,UPPER('СУДЬЯ В ОТСТАВКЕ')), (47,2,UPPER('СУДЬЯ В ОТСТАВКЕ')), (48,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('47')),
(49,1,UPPER('СЛЕДОВАТЕЛЬ ПРОКУРАТУРЫ НА ПЕНСИИ')), (49,2,UPPER('СЛЕДОВАТЕЛЬ ПРОКУРАТУРЫ НА ПЕНСИИ')), (50,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('49')),
(51,1,UPPER('НАЛОГОВЫЙ МИЛИЦИОНЕР НА ПЕНСИИ')), (51,2,UPPER('НАЛОГОВЫЙ МИЛИЦИОНЕР НА ПЕНСИИ')), (52,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('50')),
(53,1,UPPER('НЕТРУДОСПОСОБНЫЙ ЧЛЕН СЕМЬИ ПОГИБШЕГО НАЛОГОВОГО МИЛИЦИОНЕРА')), (53,2,UPPER('НЕТРУДОСПОСОБНЫЙ ЧЛЕН СЕМЬИ ПОГИБШЕГО НАЛОГОВОГО МИЛИЦИОНЕРА')), (54,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('51')),
(55,1,UPPER('СЕЛЬСКИЙ НАЛОГОВЫЙ МИЛИЦИОНЕР НА ПЕНСИИ')), (55,2,UPPER('СЕЛЬСКИЙ НАЛОГОВЫЙ МИЛИЦИОНЕР НА ПЕНСИИ')), (56,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('52')),
(57,1,UPPER('НЕТРУДОСПОСОБНЫЙ ЧЛЕН СЕМЬИ СЕЛЬСКОГО НАЛОГОВОГО МИЛИЦИОНЕРА')), (57,2,UPPER('НЕТРУДОСПОСОБНЫЙ ЧЛЕН СЕМЬИ СЕЛЬСКОГО НАЛОГОВОГО МИЛИЦИОНЕРА')), (58,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('53')),
(59,1,UPPER('ВОЕННОСЛУЖАЩИЙ СБУ НА ПЕНСИИ')), (59,2,UPPER('ВОЕННОСЛУЖАЩИЙ СБУ НА ПЕНСИИ')), (60,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('58')),
(61,1,UPPER('ЛИЦО (ЧАЭС) - 1 КАТЕГОРИЯ')), (61,2,UPPER('ЛИЦО (ЧАЭС) - 1 КАТЕГОРИЯ')), (62,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('61')),
(63,1,UPPER('ЛИЦО (ЧАЭС) - 2 КАТЕГОРИЯ - ЛИКВИДАТОР')), (63,2,UPPER('ЛИЦО (ЧАЭС) - 2 КАТЕГОРИЯ - ЛИКВИДАТОР')), (64,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('62')),
(65,1,UPPER('ЛИЦО (ЧАЭС) - 2 КАТЕГОРИЯ - ПОТЕРПЕВШИЙ')), (65,2,UPPER('ЛИЦО (ЧАЭС) - 2 КАТЕГОРИЯ - ПОТЕРПЕВШИЙ')), (66,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('63')),
(67,1,UPPER('ЛИЦО (ЧАЭС) - 3 КАТЕГОРИЯ')), (67,2,UPPER('ЛИЦО (ЧАЭС) - 3 КАТЕГОРИЯ')), (68,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('64')),
(69,1,UPPER('ЛИЦО (ЧАЭС) - 4 КАТЕГОРИЯ')), (69,2,UPPER('ЛИЦО (ЧАЭС) - 4 КАТЕГОРИЯ')), (70,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('65')),
(71,1,UPPER('ЖЕНА/МУЖ (ЧАЭС) УМЕРШЕГО ГРАЖДАНИНА')), (71,2,UPPER('ЖЕНА/МУЖ (ЧАЭС) УМЕРШЕГО ГРАЖДАНИНА')), (72,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('66')),
(73,1,UPPER('РЕБЕНОК (ЧАЭС) УМЕРШЕГО ГРАЖДАНИНА')), (73,2,UPPER('РЕБЕНОК (ЧАЭС) УМЕРШЕГО ГРАЖДАНИНА')), (74,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('67')),
(75,1,UPPER('РЕБЕНОК (ЧАЭС) ПОТЕРПЕВШЕГО')), (75,2,UPPER('РЕБЕНОК (ЧАЭС) ПОТЕРПЕВШЕГО')), (76,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('68')),
(77,1,UPPER('РЕБЕНОК (ЧАЭС) - ИНВАЛИД')), (77,2,UPPER('РЕБЕНОК (ЧАЭС) - ИНВАЛИД')), (78,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('69')),
(79,1,UPPER('ЛИЦО (ЧАЭС), РАБОТАВШЕЕ ЗА ПРЕДЕЛАМИ ЗОНЫ ОТЧУЖДЕНИЯ (ЛИКВИДАЦИЯ ПОСЛЕДСТВИЙ АВАРИИ)')), (79,2,UPPER('ЛИЦО (ЧАЭС), РАБОТАВШЕЕ ЗА ПРЕДЕЛАМИ ЗОНЫ ОТЧУЖДЕНИЯ (ЛИКВИДАЦИЯ ПОСЛЕДСТВИЙ АВАРИИ)')), (80,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('70')),
(81,1,UPPER('СОТРУДНИК УГОЛОВНО-ИСПОЛНИТЕЛЬНОЙ СИСТЕМЫ НА ПЕНСИИ')), (81,2,UPPER('СОТРУДНИК УГОЛОВНО-ИСПОЛНИТЕЛЬНОЙ СИСТЕМЫ НА ПЕНСИИ')), (82,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('71')),
(83,1,UPPER('НЕТРУДОСПОСОБНЫЙ ЧЛЕН СЕМЬИ ПОГИБШЕГО СОТРУДНИКА УГОЛОВНО-ИСПОЛНИТЕЛЬНОЙ СИСТЕМЫ')), (83,2,UPPER('НЕТРУДОСПОСОБНЫЙ ЧЛЕН СЕМЬИ ПОГИБШЕГО СОТРУДНИКА УГОЛОВНО-ИСПОЛНИТЕЛЬНОЙ СИСТЕМЫ')), (84,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('72')),
(85,1,UPPER('СЕЛЬСКИЙ СОТРУДНИК УГОЛОВНО-ИСПОЛНИТЕЛЬНОЙ СИСТЕМЫ НА ПЕНСИИ')), (85,2,UPPER('СЕЛЬСКИЙ СОТРУДНИК УГОЛОВНО-ИСПОЛНИТЕЛЬНОЙ СИСТЕМЫ НА ПЕНСИИ')), (86,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('73')),
(87,1,UPPER('НЕТРУДОСПОСОБНЫЙ ЧЛЕН СЕМЬИ ПОГИБШЕГО СЕЛЬСКОГО СОТРУДНИКА УГОЛОВНО-ИСПОЛНИТЕЛЬНОЙ СИСТЕМЫ')), (87,2,UPPER('НЕТРУДОСПОСОБНЫЙ ЧЛЕН СЕМЬИ ПОГИБШЕГО СЕЛЬСКОГО СОТРУДНИКА УГОЛОВНО-ИСПОЛНИТЕЛЬНОЙ СИСТЕМЫ')), (88,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('74')),
(89,1,UPPER('МИЛИЦИОНЕР НА ПЕНСИИ')), (89,2,UPPER('МИЛИЦИОНЕР НА ПЕНСИИ')), (90,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('75')),
(91,1,UPPER('НЕТРУДОСПОСОБНЫЙ ЧЛЕН СЕМЬИ ПОГИБШЕГО МИЛИЦИОНЕРА')), (91,2,UPPER('НЕТРУДОСПОСОБНЫЙ ЧЛЕН СЕМЬИ ПОГИБШЕГО МИЛИЦИОНЕРА')), (92,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('76')),
(93,1,UPPER('СЕЛЬСКИЙ МИЛИЦИОНЕР НА ПЕНСИИ')), (93,2,UPPER('СЕЛЬСКИЙ МИЛИЦИОНЕР НА ПЕНСИИ')), (94,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('77')),
(95,1,UPPER('НЕТРУДОСПОСОБНЫЙ ЧЛЕН СЕМЬИ ПОГИБШЕГО СЕЛЬСКОГО МИЛИЦИОНЕРА')), (95,2,UPPER('НЕТРУДОСПОСОБНЫЙ ЧЛЕН СЕМЬИ ПОГИБШЕГО СЕЛЬСКОГО МИЛИЦИОНЕРА')), (96,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('78')),
(97,1,UPPER('ВЕТЕРАН ВОИНСКОЙ СЛУЖБЫ')), (97,2,UPPER('ВЕТЕРАН ВОИНСКОЙ СЛУЖБЫ')), (98,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('80')),
(99,1,UPPER('ВДОВА/ВДОВЕЦ ВЕТЕРАНА ВОИНСКОЙ СЛУЖБЫ')), (99,2,UPPER('ВДОВА/ВДОВЕЦ ВЕТЕРАНА ВОИНСКОЙ СЛУЖБЫ')), (100,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('81')),
(101,1,UPPER('ЧЛЕН СЕМЬИ ВОЕННОСЛУЖАЩЕГО, ПОГИБШЕГО, УМЕРШЕГО, ПРОПАВШЕГО БЕЗ ВЕСТИ ИЛИ СТАВШЕГО ИНВАЛИДОМ')), (101,2,UPPER('ЧЛЕН СЕМЬИ ВОЕННОСЛУЖАЩЕГО, ПОГИБШЕГО, УМЕРШЕГО, ПРОПАВШЕГО БЕЗ ВЕСТИ ИЛИ СТАВШЕГО ИНВАЛИДОМ')), (102,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('83')),
(103,1,UPPER('РОДИТЕЛИ ВОЕННОСЛУЖАЩЕГО, СТАВШЕГО ИНВАЛИДОМ')), (103,2,UPPER('РОДИТЕЛИ ВОЕННОСЛУЖАЩЕГО, СТАВШЕГО ИНВАЛИДОМ')), (104,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('84')),
(105,1,UPPER('ВДОВА/ВДОВЕЦ ВОЕННОСЛУЖАЩЕГО И ЕГО ДЕТИ')), (105,2,UPPER('ВДОВА/ВДОВЕЦ ВОЕННОСЛУЖАЩЕГО И ЕГО ДЕТИ')), (106,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('85')),
(107,1,UPPER('ЖЕНА/МУЖ ВОЕННОСЛУЖАЩЕГО, ПРОПАВШЕГО БЕЗ ВЕСТИ')), (107,2,UPPER('ЖЕНА/МУЖ ВОЕННОСЛУЖАЩЕГО, ПРОПАВШЕГО БЕЗ ВЕСТИ')), (108,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('86')),
(109,1,UPPER('РОДИТЕЛИ ПОГИБШЕГО ВОЕННОСЛУЖАЩЕГО')), (109,2,UPPER('РОДИТЕЛИ ПОГИБШЕГО ВОЕННОСЛУЖАЩЕГО')), (110,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('87')),
(111,1,UPPER('ИНВАЛИД ВОИНСКОЙ СЛУЖБЫ')), (111,2,UPPER('ИНВАЛИД ВОИНСКОЙ СЛУЖБЫ')), (112,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('88')),
(113,1,UPPER('ВЕТЕРАН ОРГАНОВ ВНУТРЕННИХ ДЕЛ')), (113,2,UPPER('ВЕТЕРАН ОРГАНОВ ВНУТРЕННИХ ДЕЛ')), (114,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('90')),
(115,1,UPPER('ВДОВА/ВДОВЕЦ, ВЕТЕРАНА ОРГАНОВ ВНУТРЕННИХ ДЕЛ')), (115,2,UPPER('ВДОВА/ВДОВЕЦ, ВЕТЕРАНА ОРГАНОВ ВНУТРЕННИХ ДЕЛ')), (116,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('91')),
(117,1,UPPER('ПОЖАРНЫЙ НА ПЕНСИИ')), (117,2,UPPER('ПОЖАРНЫЙ НА ПЕНСИИ')), (118,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('95')),
(119,1,UPPER('НЕТРУДОСПОСОБНЫЙ ЧЛЕН СЕМЬИ ПОГИБШЕГО ПОЖАРНОГО')), (119,2,UPPER('НЕТРУДОСПОСОБНЫЙ ЧЛЕН СЕМЬИ ПОГИБШЕГО ПОЖАРНОГО')), (120,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('96')),
(121,1,UPPER('ВЕТЕРАН ГОСУДАРСТВЕННОЙ ПОЖАРНОЙ ОХРАНЫ')), (121,2,UPPER('ВЕТЕРАН ГОСУДАРСТВЕННОЙ ПОЖАРНОЙ ОХРАНЫ')),(122,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('98')),
(123,1,UPPER('ВДОВА/ВДОВЕЦ ВЕТЕРАНА ГОСУДАРСТВЕННОЙ ПОЖАРНОЙ ОХРАНЫ')), (123,2,UPPER('ВДОВА/ВДОВЕЦ ВЕТЕРАНА ГОСУДАРСТВЕННОЙ ПОЖАРНОЙ ОХРАНЫ')), (124,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('99')),
(125,1,UPPER('РЕАБИЛИТИРОВАННЫЕ, СТАВШИЕ ИНВАЛИДАМИ ВСЛЕДСТВИИ РЕПРЕССИЙ, ЛИБО ЯВЛЯЮЩИЕСЯ ПЕНСИОНЕРАМИ, ИМЕЮЩИМИ П')), (125,2,UPPER('РЕАБИЛИТИРОВАННЫЕ, СТАВШИЕ ИНВАЛИДАМИ ВСЛЕДСТВИИ РЕПРЕССИЙ, ЛИБО ЯВЛЯЮЩИЕСЯ ПЕНСИОНЕРАМИ, ИМЕЮЩИМИ П')), (126,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('100')),
(127,1,UPPER('РЕБЕНОК-ИНВАЛИД')), (127,2,UPPER('РЕБЕНОК-ИНВАЛИД')), (128,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('110')),
(129,1,UPPER('ИНВАЛИД 1 ГРУППЫ ПО ЗРЕНИЮ ИЛИ С ВРАЖДЕННЫМ ОРА')), (129,2,UPPER('ИНВАЛИД 1 ГРУППЫ ПО ЗРЕНИЮ ИЛИ С ВРАЖДЕННЫМ ОРА')), (130,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('111')),
(131,1,UPPER('ИНВАЛИД 2 ГРУППЫ ПО ЗРЕНИЮ ИЛИ С ВРАЖДЕННЫМ ОРА')), (131,2,UPPER('ИНВАЛИД 2 ГРУППЫ ПО ЗРЕНИЮ ИЛИ С ВРАЖДЕННЫМ ОРА')), (132,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('112')),
(133,1,UPPER('ИНВАЛИД 1 ГРУППЫ, КРОМЕ ИНВАЛИДОВ ПО ЗРЕНИЮ ИЛИ С ВРОЖДЕННЫМ ОРА')), (133,2,UPPER('ИНВАЛИД 1 ГРУППЫ, КРОМЕ ИНВАЛИДОВ ПО ЗРЕНИЮ ИЛИ С ВРОЖДЕННЫМ ОРА')), (134,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('113')),
(135,1,UPPER('ИНВАЛИД 2 ГРУППЫ, КРОМЕ ИНВАЛИДОВ ПО ЗРЕНИЮ ИЛИ С ВРОЖДЕННЫМ ОРА')), (135,2,UPPER('ИНВАЛИД 2 ГРУППЫ, КРОМЕ ИНВАЛИДОВ ПО ЗРЕНИЮ ИЛИ С ВРОЖДЕННЫМ ОРА')), (136,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('114')),
(137,1,UPPER('ИНВАЛИД 3 ГРУППЫ')), (137,2,UPPER('ИНВАЛИД 3 ГРУППЫ')), (138,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('115')),
(139,1,UPPER('ЖЕРТВА НАЦИСТСКИХ ПРЕСЛЕДОВАНИЙ, СТ. 6(1)')), (139,2,UPPER('ЖЕРТВА НАЦИСТСКИХ ПРЕСЛЕДОВАНИЙ, СТ. 6(1)')), (140,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('120')),
(141,1,UPPER('ЖЕРТВА НАЦИСТСКИХ ПРЕСЛЕДОВАНИЙ, СТ. 6(2) - ИНВАЛИД 1 ГРУППЫ')), (141,2,UPPER('ЖЕРТВА НАЦИСТСКИХ ПРЕСЛЕДОВАНИЙ, СТ. 6(2) - ИНВАЛИД 1 ГРУППЫ')), (142,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('121')),
(143,1,UPPER('ЖЕРТВА НАЦИСТСКИХ ПРЕСЛЕДОВАНИЙ, СТ. 6(2) - ИНВАЛИД 2 ГРУППЫ')), (143,2,UPPER('ЖЕРТВА НАЦИСТСКИХ ПРЕСЛЕДОВАНИЙ, СТ. 6(2) - ИНВАЛИД 2 ГРУППЫ')), (144,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('122')),
(145,1,UPPER('ЖЕРТВА НАЦИСТСКИХ ПРЕСЛЕДОВАНИЙ, СТ. 6(2) - ИНВАЛИД 3 ГРУППЫ')), (145,2,UPPER('ЖЕРТВА НАЦИСТСКИХ ПРЕСЛЕДОВАНИЙ, СТ. 6(2) - ИНВАЛИД 3 ГРУППЫ')), (146,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('123')),
(147,1,UPPER('ЖЕРТВА НАЦИСТСКИХ ПРЕСЛЕДОВАНИЙ, СТ. 6(3)')), (147,2,UPPER('ЖЕРТВА НАЦИСТСКИХ ПРЕСЛЕДОВАНИЙ, СТ. 6(3)')), (148,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('124')),
(149,1,UPPER('ЖЕРТВА НАЦИСТСКИХ ПРЕСЛЕДОВАНИЙ, СТ. 6(4)')), (149,2,UPPER('ЖЕРТВА НАЦИСТСКИХ ПРЕСЛЕДОВАНИЙ, СТ. 6(4)')), (150,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('125')),
(151,1,UPPER('ГОРНЯКИ - НЕТРУДОСПОСОБНЫЕ РАБОТНИКИ')), (151,2,UPPER('ГОРНЯКИ - НЕТРУДОСПОСОБНЫЕ РАБОТНИКИ')), (152,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('126')),
(153,1,UPPER('ГОРНЯКИ - НЕРАБОТАЮЩИЕ ПЕНСИОНЕРЫ')), (153,2,UPPER('ГОРНЯКИ - НЕРАБОТАЮЩИЕ ПЕНСИОНЕРЫ')), (154,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('127')),
(155,1,UPPER('ГОРНЯКИ - ИНВАЛИДЫ')), (155,2,UPPER('ГОРНЯКИ - ИНВАЛИДЫ')), (156,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('128')),
(157,1,UPPER('ГОРНЯКИ - СЕМЬИ ПОГИБШИХ ТРУЖЕНИКОВ')), (157,2,UPPER('ГОРНЯКИ - СЕМЬИ ПОГИБШИХ ТРУЖЕНИКОВ')), (158,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('129')),
(159,1,UPPER('ВЕТЕРАН ГОСУДАРСТВЕННОЙ СЛУЖБЫ СПЕЦ.СВЯЗИ')), (159,2,UPPER('ВЕТЕРАН ГОСУДАРСТВЕННОЙ СЛУЖБЫ СПЕЦ.СВЯЗИ')), (160,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('130')),
(161,1,UPPER('ВДОВА/ВДОВЕЦ ВЕТЕРАНА ГОСУДАРСТВЕННОЙ СЛУЖБЫ СПЕЦ.СВЯЗИ')), (161,2,UPPER('ВДОВА/ВДОВЕЦ ВЕТЕРАНА ГОСУДАРСТВЕННОЙ СЛУЖБЫ СПЕЦ.СВЯЗИ')), (162,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('131')),
(163,1,UPPER('РОДИТЕЛИ И ЧЛЕНЫ СЕМЬИ ПОГИБШЕГО/УМЕРШЕГО СОТРУДНИКА ГОСУДАРСТВЕННОЙ СЛУЖБЫ СПЕЦ.СВЯЗИ')), (163,2,UPPER('РОДИТЕЛИ И ЧЛЕНЫ СЕМЬИ ПОГИБШЕГО/УМЕРШЕГО СОТРУДНИКА ГОСУДАРСТВЕННОЙ СЛУЖБЫ СПЕЦ.СВЯЗИ')), (164,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('132')),
(165,1,UPPER('РОДИТЕЛИ И ЧЛЕНЫ СЕМЬИ СОТРУДНИКА ГРАЖДАНСКОЙ ОБОРОНЫ, ПОГИБШЕГО, УМЕРШЕГО, ПРОПАВШЕГО БЕЗ ВЕСТИ ИЛИ')), (165,2,UPPER('РОДИТЕЛИ И ЧЛЕНЫ СЕМЬИ СОТРУДНИКА ГРАЖДАНСКОЙ ОБОРОНЫ, ПОГИБШЕГО, УМЕРШЕГО, ПРОПАВШЕГО БЕЗ ВЕСТИ ИЛИ')), (166,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('135')),
(167,1,UPPER('МАТЕРИ-ГЕРОИНИ')), (167,2,UPPER('МАТЕРИ-ГЕРОИНИ')), (168,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('200')),
(169,1,UPPER('ДЕТИ-ИНВАЛИДЫ, ПРИКОВАННЫЕ К КРОВАТИ')), (169,2,UPPER('ДЕТИ-ИНВАЛИДЫ, ПРИКОВАННЫЕ К КРОВАТИ')), (170,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('201')),
(171,1,UPPER('ДЕТИ-ИНВАЛИДЫ ДО 18 ЛЕТ, ГДЕ ОБА РОДИТЕЛИ ИНВАЛИДЫ')), (171,2,UPPER('ДЕТИ-ИНВАЛИДЫ ДО 18 ЛЕТ, ГДЕ ОБА РОДИТЕЛИ ИНВАЛИДЫ')), (172,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('202')),
(173,1,UPPER('МНОГОДЕТНЫЕ СЕМЬИ (3 И БОЛЕЕ ДЕТЕЙ ДО 18 ЛЕТ)')), (173,2,UPPER('МНОГОДЕТНЫЕ СЕМЬИ (3 И БОЛЕЕ ДЕТЕЙ ДО 18 ЛЕТ)')), (174,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('203')),
(175,1,UPPER('МАТЕРИ-ОДИНОЧКИ (2 И БОЛЕЕ ДЕТЕЙ ДО 18 ЛЕТ)')), (175,2,UPPER('МАТЕРИ-ОДИНОЧКИ (2 И БОЛЕЕ ДЕТЕЙ ДО 18 ЛЕТ)')), (176,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('204')),
(177,1,UPPER('ДЕТИ-ИНВАЛИДЫ С ОНКОЛОГИЧЕСКИМИ ЗАБОЛЕВАНИЯМИ ДО 18 ЛЕТ')), (177,2,UPPER('ДЕТИ-ИНВАЛИДЫ С ОНКОЛОГИЧЕСКИМИ ЗАБОЛЕВАНИЯМИ ДО 18 ЛЕТ')), (178,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('205')),
(179,1,UPPER('ИНВАЛИДЫ 1 ГРУППЫ, ПОЛУЧАЮЩИЕ СОЦИАЛЬНУЮ ПЕНСИЮ ИЛИ ГОСУДАРСТВЕННУЮ ПОМОЩЬ')), (179,2,UPPER('ИНВАЛИДЫ 1 ГРУППЫ, ПОЛУЧАЮЩИЕ СОЦИАЛЬНУЮ ПЕНСИЮ ИЛИ ГОСУДАРСТВЕННУЮ ПОМОЩЬ')), (180,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('206')),
(181,1,UPPER('НЕРАБОТАЮЩИЕ РОДИТЕЛИ, ОСУЩЕСТВЛЯЮЩИЕ УХОД ЗА РЕБЕНКОМ-ИНВАЛИДОМ ДО 18 ЛЕТ')), (181,2,UPPER('НЕРАБОТАЮЩИЕ РОДИТЕЛИ, ОСУЩЕСТВЛЯЮЩИЕ УХОД ЗА РЕБЕНКОМ-ИНВАЛИДОМ ДО 18 ЛЕТ')), (182,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('207')),
(183,1,UPPER('ИНВАЛИДЫ 1, 2 ГРУППЫ ПО ЗРЕНИЮ')), (183,2,UPPER('ИНВАЛИДЫ 1, 2 ГРУППЫ ПО ЗРЕНИЮ')), (184,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('208')),
(185,1,UPPER('СЕМЬИ ДЕТЕЙ ДО 18 ЛЕТ, БОЛЬНЫХ ДЦП')), (185,2,UPPER('СЕМЬИ ДЕТЕЙ ДО 18 ЛЕТ, БОЛЬНЫХ ДЦП')), (186,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('209')),
(187,1,UPPER('ГРАЖДАНЕ, РЕАБИЛИТИРОВАННЫЕ СОГЛАСНО')), (187,2,UPPER('ГРАЖДАНЕ, РЕАБИЛИТИРОВАННЫЕ СОГЛАСНО')), (188,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('210')),
(189,1,UPPER('СЕМЬИ ПОГИБШИХ (РЯДОВОЙ СОСТАВ) ПРИ ПРОХОЖДЕНИИ СРОЧНОЙ ВОИНСКОЙ СЛУЖБЫ, ИСПОЛНЯВШИХ СВОЙ ДОЛГ В МИ')), (189,2,UPPER('СЕМЬИ ПОГИБШИХ (РЯДОВОЙ СОСТАВ) ПРИ ПРОХОЖДЕНИИ СРОЧНОЙ ВОИНСКОЙ СЛУЖБЫ, ИСПОЛНЯВШИХ СВОЙ ДОЛГ В МИ')), (190,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('211')),
(191,1,UPPER('ПРИЕМНЫЕ СЕМЬИ')), (191,2,UPPER('ПРИЕМНЫЕ СЕМЬИ')), (192,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('212')),
(193,1,UPPER('ДВОРНИКИ')), (193,2,UPPER('ДВОРНИКИ')), (194,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('300')),
(195,1,UPPER('АВАРИЙНО-ДИСПЕТЧЕРСКАЯ СЛУЖБА')), (195,2,UPPER('АВАРИЙНО-ДИСПЕТЧЕРСКАЯ СЛУЖБА')), (196,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('301')),
(197,1,UPPER('ПРИЕМНЫЕ СЕМЬИ')), (197,2,UPPER('ПРИЕМНЫЕ СЕМЬИ')), (198,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('303')),
(199,1,UPPER('СОЦИАЛЬНЫЕ РАБОЧИЕ')), (199,2,UPPER('СОЦИАЛЬНЫЕ РАБОЧИЕ')), (200,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('304')),
(201,1,UPPER('УХОД ЗА ИНВАЛИДОМ 1 ГРУППЫ ВОВ')), (201,2,UPPER('УХОД ЗА ИНВАЛИДОМ 1 ГРУППЫ ВОВ')), (202,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('305')),
(203,1,UPPER('РАБОТНИКИ ХКП "ГОРЭЛЕКТРОТРАНС"')), (203,2,UPPER('РАБОТНИКИ ХКП "ГОРЭЛЕКТРОТРАНС"')), (204,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('306')),
(205,1,UPPER('АФГАНИСТАН')), (205,2,UPPER('АФГАНИСТАН')), (206,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('633')),
(207,1,UPPER('ВЕТЕРАН НАЛОГОВОЙ МИЛИЦИИ')), (207,2,UPPER('ВЕТЕРАН НАЛОГОВОЙ МИЛИЦИИ')), (208,(SELECT `id` FROM `locales` WHERE `system` = 1),UPPER('45'));
INSERT INTO `privilege_attribute`(`attribute_id`, `object_id`, `attribute_type_id`, `value_id`, `value_type_id`) VALUES
(1,1,1200,1,1200),(1,1,1201,2,1201),
(1,2,1200,3,1200),(1,2,1201,4,1201),
(1,3,1200,5,1200),(1,3,1201,6,1201),
(1,4,1200,7,1200),(1,4,1201,8,1201),
(1,5,1200,9,1200),(1,5,1201,10,1201),
(1,6,1200,11,1200),(1,6,1201,12,1201),
(1,7,1200,13,1200),(1,7,1201,14,1201),
(1,8,1200,15,1200),(1,8,1201,16,1201),
(1,9,1200,17,1200),(1,9,1201,18,1201),
(1,10,1200,19,1200),(1,10,1201,20,1201),
(1,11,1200,21,1200),(1,11,1201,22,1201),
(1,12,1200,23,1200),(1,12,1201,24,1201),
(1,13,1200,25,1200),(1,13,1201,26,1201),
(1,14,1200,27,1200),(1,14,1201,28,1201),
(1,15,1200,29,1200),(1,15,1201,30,1201),
(1,16,1200,31,1200),(1,16,1201,32,1201),
(1,17,1200,33,1200),(1,17,1201,34,1201),
(1,18,1200,35,1200),(1,18,1201,36,1201),
(1,19,1200,37,1200),(1,19,1201,38,1201),
(1,20,1200,39,1200),(1,20,1201,40,1201),
(1,21,1200,41,1200),(1,21,1201,42,1201),
(1,22,1200,43,1200),(1,22,1201,44,1201),
(1,23,1200,45,1200),(1,23,1201,46,1201),
(1,24,1200,47,1200),(1,24,1201,48,1201),
(1,25,1200,49,1200),(1,25,1201,50,1201),
(1,26,1200,51,1200),(1,26,1201,52,1201),
(1,27,1200,53,1200),(1,27,1201,54,1201),
(1,28,1200,55,1200),(1,28,1201,56,1201),
(1,29,1200,57,1200),(1,29,1201,58,1201),
(1,30,1200,59,1200),(1,30,1201,60,1201),
(1,31,1200,61,1200),(1,31,1201,62,1201),
(1,32,1200,63,1200),(1,32,1201,64,1201),
(1,33,1200,65,1200),(1,33,1201,66,1201),
(1,34,1200,67,1200),(1,34,1201,68,1201),
(1,35,1200,69,1200),(1,35,1201,70,1201),
(1,36,1200,71,1200),(1,36,1201,72,1201),
(1,37,1200,73,1200),(1,37,1201,74,1201),
(1,38,1200,75,1200),(1,38,1201,76,1201),
(1,39,1200,77,1200),(1,39,1201,78,1201),
(1,40,1200,79,1200),(1,40,1201,80,1201),
(1,41,1200,81,1200),(1,41,1201,82,1201),
(1,42,1200,83,1200),(1,42,1201,84,1201),
(1,43,1200,85,1200),(1,43,1201,86,1201),
(1,44,1200,87,1200),(1,44,1201,88,1201),
(1,45,1200,89,1200),(1,45,1201,90,1201),
(1,46,1200,91,1200),(1,46,1201,92,1201),
(1,47,1200,93,1200),(1,47,1201,94,1201),
(1,48,1200,95,1200),(1,48,1201,96,1201),
(1,49,1200,97,1200),(1,49,1201,98,1201),
(1,50,1200,99,1200),(1,50,1201,100,1201),
(1,51,1200,101,1200),(1,51,1201,102,1201),
(1,52,1200,103,1200),(1,52,1201,104,1201),
(1,53,1200,105,1200),(1,53,1201,106,1201),
(1,54,1200,107,1200),(1,54,1201,108,1201),
(1,55,1200,109,1200),(1,55,1201,110,1201),
(1,56,1200,111,1200),(1,56,1201,112,1201),
(1,57,1200,113,1200),(1,57,1201,114,1201),
(1,58,1200,115,1200),(1,58,1201,116,1201),
(1,59,1200,117,1200),(1,59,1201,118,1201),
(1,60,1200,119,1200),(1,60,1201,120,1201),
(1,61,1200,121,1200),(1,61,1201,122,1201),
(1,62,1200,123,1200),(1,62,1201,124,1201),
(1,63,1200,125,1200),(1,63,1201,126,1201),
(1,64,1200,127,1200),(1,64,1201,128,1201),
(1,65,1200,129,1200),(1,65,1201,130,1201),
(1,66,1200,131,1200),(1,66,1201,132,1201),
(1,67,1200,133,1200),(1,67,1201,134,1201),
(1,68,1200,135,1200),(1,68,1201,136,1201),
(1,69,1200,137,1200),(1,69,1201,138,1201),
(1,70,1200,139,1200),(1,70,1201,140,1201),
(1,71,1200,141,1200),(1,71,1201,142,1201),
(1,72,1200,143,1200),(1,72,1201,144,1201),
(1,73,1200,145,1200),(1,73,1201,146,1201),
(1,74,1200,147,1200),(1,74,1201,148,1201),
(1,75,1200,149,1200),(1,75,1201,150,1201),
(1,76,1200,151,1200),(1,76,1201,152,1201),
(1,77,1200,153,1200),(1,77,1201,154,1201),
(1,78,1200,155,1200),(1,78,1201,156,1201),
(1,79,1200,157,1200),(1,79,1201,158,1201),
(1,80,1200,159,1200),(1,80,1201,160,1201),
(1,81,1200,161,1200),(1,81,1201,162,1201),
(1,82,1200,163,1200),(1,82,1201,164,1201),
(1,83,1200,165,1200),(1,83,1201,166,1201),
(1,84,1200,167,1200),(1,84,1201,168,1201),
(1,85,1200,169,1200),(1,85,1201,170,1201),
(1,86,1200,171,1200),(1,86,1201,172,1201),
(1,87,1200,173,1200),(1,87,1201,174,1201),
(1,88,1200,175,1200),(1,88,1201,176,1201),
(1,89,1200,177,1200),(1,89,1201,178,1201),
(1,90,1200,179,1200),(1,90,1201,180,1201),
(1,91,1200,181,1200),(1,91,1201,182,1201),
(1,92,1200,183,1200),(1,92,1201,184,1201),
(1,93,1200,185,1200),(1,93,1201,186,1201),
(1,94,1200,187,1200),(1,94,1201,188,1201),
(1,95,1200,189,1200),(1,95,1201,190,1201),
(1,96,1200,191,1200),(1,96,1201,192,1201),
(1,97,1200,193,1200),(1,97,1201,194,1201),
(1,98,1200,195,1200),(1,98,1201,196,1201),
(1,99,1200,197,1200),(1,99,1201,198,1201),
(1,100,1200,199,1200),(1,100,1201,200,1201),
(1,101,1200,201,1200),(1,101,1201,202,1201),
(1,102,1200,203,1200),(1,102,1201,204,1201),
(1,103,1200,205,1200),(1,103,1201,206,1201),
(1,104,1200,207,1200),(1,104,1201,208,1201);

-- Status descriptions
INSERT INTO `status_description`(`code`, `name`) VALUES
(110,'Загружено'), (111,'Ошибка загрузки'), (112,'Загружается'),
(120,'Связано'), (121,'Ошибка связывания'), (122,'Связывается'),
(130,'Обработано'), (131,'Ошибка обработки'), (132,'Обрабатывается'),
(140,'Выгружено'), (141,'Ошибка выгрузки'), (142,'Выгружается'),
(240,'Загружена'),
(200,'Неизвестный населенный пункт'), (237, 'Неизвестный тип улицы'), (201,'Неизвестная улица'),
(231,'Соответсвие для дома не может быть установлено'), (202,'Неизвестный номер дома'),
(234,'Найдено более одного населенного пункта в адресной базе'), (238, 'Найдено более одного типа улицы в адресной базе'), (235,'Найдено более одной улицы в адресной базе'),
(236,'Найдено более одного дома в адресной базе'), (210,'Найдено более одного соответствия для населенного пункта'), (239, 'Найдено более одного соответствия для типа улицы'),
(211,'Найдено более одного соответствия для улицы'), (228,'Найдено более одного соответствия для дома'),
(204,'Адрес откорректирован'), (205,'Населенный пункт не найден в соответствиях МН'), (206,'Район не найден в соответствиях МН'),
(207,'Тип улицы не найден в соответствиях МН'), (208,'Улица не найдена в соответствиях МН'), (209,'Дом не найден в соответствиях МН'),
(229, 'Более одного населенного пункта найдено в соответствиях МН'), (230,'Более одного района найдено в соответствиях МН'),
(232,'Более одной улицы найдено в соответствиях МН'),(233,'Более одного дома найдено в соответствиях МН'),
(212,'Номер личного счета не разрешён'), (213,'Больше одного личного счета'), (242,'Более одного л/с в таблице счетов абонентов'), (241,'Несоответствие номера л/с'), (214,'Номер личного счета разрешен'),
(215,'Запись обработана'), (216,'Код тарифа на оплату жилья не найден в справочнике тарифов для запросов по субсидиям'), (217,'Не сопоставлен носитель льготы'),
(218,'Льгота не найдена в справочнике соответствий'), (219,'Неверный формат данных на этапе обработки'), (203,'Неверный формат данных на этапе связывания'),
(220, 'Нет запроса оплаты'), (221, 'Населенный пункт не найден в МН'), (222, 'Район не найден в МН'), (223, 'Тип улицы не найден в МН'),
(224, 'Улица не найдена в МН'), (225, 'Дом не найден в МН'), (226, 'Корпус дома не найден в МН'), (227, 'Квартира не найдена в МН'),
(300, 'Тариф не найден в справочнике тарифов для запросов по субсидиям'), (301, 'Объект формы собственности не найден в справочнике соответствий для МН'),
(302, 'Код формы собственности не найден в справочнике соответствий для ОСЗН'), (303, 'Нечисловой код формы собственности в справочнике соответствий для ОСЗН'),
(304, 'Объект льготы не найден в справочнике соответствий для МН'), (305, 'Код льготы не найден в справочнике соответствий для ОСЗН'),
(306, 'Нечисловой код льготы в справочнике соответствий для ОСЗН'), (307, 'Нечисловой порядок льготы'),
(308, 'Номер л/с ЖЭКа в МН не соответствует шаблону: <номер ЖЭКа>.<номер л/с ЖЭКа>.');

-- Type description
INSERT INTO `type_description`(`code`, `name`) VALUES
(1, 'Льгота запроса на субсидию'), (2, 'Начисление запроса на субсидию'), (3, 'Тариф запроса на субсидию'),
(4, 'Фактическое начисление'),(5, 'Субсидия'),(6, 'Характеристики жилья'),(7, 'Виды услуг'),(8, 'Форма-2 льгота'),
(9, 'Типы улиц запроса по льготам'),(10, 'Улицы запроса по льготам'),(11, 'Тарифы запроса по льготам');

-- --------------------------------
-- Service provider type
-- --------------------------------
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (1600, 1, 'Тип услуги'), (1600, 2, 'Тип услуги');
INSERT INTO `entity`(`id`, `entity_table`, `entity_name_id`, `strategy_factory`) VALUES (1600, 'service_provider_type', 1600, '');
INSERT INTO `string_culture`(`id`, `locale_id`, `value`) VALUES (1601, 1, UPPER('Название')), (1601, 2, UPPER('Назва'));
INSERT INTO `entity_attribute_type`(`id`, `entity_id`, `mandatory`, `attribute_type_name_id`, `system`) VALUES (1600, 1600, 1, 1601, 1);
INSERT INTO `entity_attribute_value_type`(`id`, `attribute_type_id`, `attribute_value_type`) VALUES (1600, 1600, UPPER('string_culture'));

-- --------------------------------
-- Predefined service provider types
-- --------------------------------
-- Some service provider types are commented. Uncomment them as the need is arising.
-- квартплата/скраплений газ (1), опалення/вугілля (2), гаряча вода/дрова (3), холодна вода (4), газ (5),
-- електроенергія (6), вивіз сміття (7), вивіз нечистот (8 ).
INSERT INTO `service_provider_type`(`object_id`) VALUES (1),(2),(3),(4),(5),(6),(7),(8);
INSERT INTO `service_provider_type_string_culture`(`id`, `locale_id`, `value`) VALUES 
(1, 1, UPPER('квартплата / сжиженный газ')), (1, 2,UPPER('квартплата / скраплений газ')),
(2, 1, UPPER('отопление / уголь')), (2, 2, UPPER('опалення / вугілля')),
(3, 1, UPPER('горячая вода / дрова')), (3, 2, UPPER('гаряча вода/дрова')),
(4, 1, UPPER('холодная вода')), (4, 2, UPPER('холодна вода')),
(5, 1, UPPER('газ')), (5, 2, UPPER('газ')),
(6, 1, UPPER('электроэнергия')), (6, 2, UPPER('електроенергія')),
(7, 1, UPPER('вывоз мусора')), (7, 2, UPPER('вивіз сміття')),
(8, 1, UPPER('водоотведение')), (8, 2, UPPER('вивіз нечистот'));

INSERT INTO `service_provider_type_attribute`(`attribute_id`, `object_id`, `attribute_type_id`, `value_id`, `value_type_id`)
  VALUES (1,1,1600,1,1600),(1,2,1600,2,1600),(1,3,1600,3,1600),(1,4,1600,4,1600),(1,5,1600,5,1600),(1,6,1600,6,1600),
    (1,7,1600,7,1600),(1,8,1600,8,1600);

-- Itself organization
INSERT INTO `organization`(`object_id`) VALUES (0);
INSERT INTO `organization_string_culture`(`id`, `locale_id`, `value`) VALUES
(1, 1, UPPER('Модуль №1')), (1,2,UPPER('Модуль №1')), (2, (SELECT `id` FROM `locales` WHERE `system` = 1), UPPER('0'));
INSERT INTO `organization_attribute`(`attribute_id`, `object_id`, `attribute_type_id`, `value_id`, `value_type_id`) VALUES
(1,0,900,1,900), (1,0,901,2,901);


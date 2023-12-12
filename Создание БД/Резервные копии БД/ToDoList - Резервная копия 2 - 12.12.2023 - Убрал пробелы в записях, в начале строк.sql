PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Задачи (
  ID_Задачи INTEGER PRIMARY KEY,
  Название_задачи TEXT NOT NULL,
  Описание_задачи TEXT,
  Дата_начала DATE NOT NULL,
  Дата_окончания DATE,
  Статус INTEGER,
  Приоритет INTEGER,
  FOREIGN KEY (Статус) REFERENCES Статусы (ID_Статуса),
  FOREIGN KEY (Приоритет) REFERENCES Приоритеты (ID_Приоритета)
);
INSERT INTO "Задачи" VALUES(1,' Разработка сценария',' Создание сценария для новой игры','2023-06-01','2023-07-01',1,1);
INSERT INTO "Задачи" VALUES(2,' Дизайн персонажей',' Разработка дизайна персонажей для новой игры','2023-06-15','2023-07-15',1,1);
INSERT INTO "Задачи" VALUES(3,' Программирование AI',' Разработка искусственного интеллекта для врагов в игре','2023-06-20','NULL',1,2);
INSERT INTO "Задачи" VALUES(4,' Программирование движка игры',' Создание и тестирование движка игры','2023-06-20','2023-09-20',1,1);
INSERT INTO "Задачи" VALUES(5,' Тестирование уровней',' Тестирование уровней игры на баги и ошибки','2023-07-01','2023-07-15',1,2);
INSERT INTO "Задачи" VALUES(6,' Создание музыки',' Создание музыкального сопровождения для игры','2023-07-10','2023-08-10',1,3);
INSERT INTO "Задачи" VALUES(7,' Звуковые эффекты',' Создание звуковых эффектов','2023-07-15','2023-08-15',1,2);
INSERT INTO "Задачи" VALUES(8,' Подготовка к запуску',' Подготовка к официальному запуску','2023-11-01','2023-12-01',1,1);
INSERT INTO "Задачи" VALUES(9,' Оптимизация графики',' Оптимизация графического движка игры','2023-07-15','2023-08-15',1,1);
INSERT INTO "Задачи" VALUES(10,' Локализация',' Перевод игры на несколько языков','2023-08-01','2023-09-01',1,2);
INSERT INTO "Задачи" VALUES(11,' Маркетинговая кампания',' Планирование и реализация маркетинговой кампании','2023-08-15','2023-10-15',1,1);
INSERT INTO "Задачи" VALUES(12,' Разработка пользовательского UI',' Создание пользовательского интерфейса для игры','2023-06-01','2023-07-01',2,1);
INSERT INTO "Задачи" VALUES(13,' Бета-тестирование',' Проведение бета-тестирования игры среди выбранной группы пользователей','2023-09-01','2023-09-15',2,1);
INSERT INTO "Задачи" VALUES(14,' Исправление ошибок',' Исправление ошибок найденных во время бета-тестирования','2023-09-15','2023-10-01',2,1);
INSERT INTO "Задачи" VALUES(15,' Релиз игры',' Официальный релиз игры','2023-10-01','2023-10-01',2,1);
INSERT INTO "Задачи" VALUES(16,' Поддержка пользователей',' Обеспечение поддержки пользователям после релиза игры','2023-10-02','NULL',3,2);
INSERT INTO "Задачи" VALUES(17,' Обновление контента',' Создание и выпуск обновлений контента для игры','2023-10-15','NULL',3,3);
INSERT INTO "Задачи" VALUES(18,' Разработка DLC',' Разработка дополнительного контента для игры','2023-11-01','2023-12-01',3,2);
INSERT INTO "Задачи" VALUES(19,' Производство трейлера',' Создание трейлера для дополнительного контента','2023-11-15','2023-12-01',3,3);
INSERT INTO "Задачи" VALUES(20,' Релиз DLC',' Официальный релиз дополнительного контента','2023-12-01','2023-12-01',4,1);
INSERT INTO "Задачи" VALUES(21,' Поддержка DLC',' Обеспечение поддержки пользователям после релиза дополнительного контента','2023-12-02','NULL',4,2);
INSERT INTO "Задачи" VALUES(22,' Исправление ошибок DLC',' Исправление ошибок найденных в дополнительном контенте','2023-12-15','NULL',4,1);
INSERT INTO "Задачи" VALUES(23,' Планирование следующей игры',' Начало планирования следующей игры','2023-12-20','NULL',4,1);
CREATE TABLE Пользователи (
  ID_Пользователя INTEGER PRIMARY KEY,
  Имя_пользователя TEXT NOT NULL,
  Адрес_электронной_почты TEXT,
  ID_Роли INTEGER,
  FOREIGN KEY (ID_Роли) REFERENCES Роли (ID_Роли)
);
INSERT INTO "Пользователи" VALUES(1,'Сергей Смирнов',' sergey.smirnov@example.com',2);
INSERT INTO "Пользователи" VALUES(2,'Иван Сидоров',' ivan.ivanov@example.com',2);
INSERT INTO "Пользователи" VALUES(3,'Пётр Васильев',' petr.petrov@example.com',2);
INSERT INTO "Пользователи" VALUES(4,'Анна Сидорова',' anna.sidorova@example.com',1);
INSERT INTO "Пользователи" VALUES(5,'Мария Попова',' maria.popova@example.com',2);
INSERT INTO "Пользователи" VALUES(6,'Виктор Соколов',' viktor.sokolov@example.com',2);
INSERT INTO "Пользователи" VALUES(7,'Ольга Кузнецова',' olga.kuznetsova@example.com',2);
INSERT INTO "Пользователи" VALUES(8,'Алексей Морозов',' alexey.morozov@example.com',1);
INSERT INTO "Пользователи" VALUES(9,'Наталья Петрова',' natalya.petrova@example.com',2);
INSERT INTO "Пользователи" VALUES(10,'Дмитрий Новиков',' dmitry.novikov@example.com',2);
INSERT INTO "Пользователи" VALUES(11,'Екатерина Романова',' ekaterina.romanova@example.com',1);
INSERT INTO "Пользователи" VALUES(12,'Андрей Орлов',' andrey.orlov@example.com',2);
INSERT INTO "Пользователи" VALUES(13,'Ирина Соловьёва',' irina.solovieva@example.com',2);
INSERT INTO "Пользователи" VALUES(14,'Степан Козлов',' stepan.kozlov@example.com',2);
INSERT INTO "Пользователи" VALUES(15,'Юлия Виноградова',' yulia.vinogradova@example.com',1);
INSERT INTO "Пользователи" VALUES(16,'Николай Трофимов',' nikolay.trofimov@example.com',2);
INSERT INTO "Пользователи" VALUES(17,'Татьяна Антонова',' tatyana.antonova@example.com',2);
INSERT INTO "Пользователи" VALUES(18,'Михаил Лебедев',' mikhail.lebedev@example.com',1);
INSERT INTO "Пользователи" VALUES(19,'Светлана Егорова',' svetlana.egorova@example.com',2);
INSERT INTO "Пользователи" VALUES(20,'Василий Фёдоров',' vasily.fedorov@example.com',2);
INSERT INTO "Пользователи" VALUES(21,'Елена Михайлова',' elena.mikhailova@example.com',2);
INSERT INTO "Пользователи" VALUES(22,'Павел Беляев',' pavel.belyaev@example.com',2);
INSERT INTO "Пользователи" VALUES(23,'Людмила Алексеева',' lyudmila.alexeeva@example.com',1);
INSERT INTO "Пользователи" VALUES(24,'Георгий Степанов',' georgy.stepanov@example.com',2);
CREATE TABLE Роли (
  ID_Роли INTEGER PRIMARY KEY,
  Название_роли TEXT NOT NULL,
  Описание TEXT
);
INSERT INTO "Роли" VALUES(1,'Администратор',' Полный доступ ко всем задачам');
INSERT INTO "Роли" VALUES(2,'Пользователь',' Доступ только к его задачам');
CREATE TABLE Назначения (
  ID_Назначения INTEGER PRIMARY KEY,
  "ID_Пользователя" INTEGER,
  "ID_Задачи" INTEGER,
  Дата_назначения DATE,
  FOREIGN KEY ("ID_Пользователя") REFERENCES Пользователи (ID_Пользователя),
  FOREIGN KEY ("ID_Задачи") REFERENCES Задачи (ID_Задачи)
);
INSERT INTO "Назначения" VALUES(1,1,4,'2023-06-01');
INSERT INTO "Назначения" VALUES(2,2,4,'2023-06-01');
INSERT INTO "Назначения" VALUES(3,3,5,'2023-06-15');
INSERT INTO "Назначения" VALUES(4,4,5,'2023-06-15');
INSERT INTO "Назначения" VALUES(5,5,6,'2023-06-20');
INSERT INTO "Назначения" VALUES(6,6,7,'2023-07-01');
INSERT INTO "Назначения" VALUES(7,7,7,'2023-07-01');
INSERT INTO "Назначения" VALUES(8,8,8,'2023-07-10');
INSERT INTO "Назначения" VALUES(9,9,9,'2023-07-15');
INSERT INTO "Назначения" VALUES(10,10,9,'2023-07-15');
INSERT INTO "Назначения" VALUES(11,11,10,'2023-08-01');
INSERT INTO "Назначения" VALUES(12,12,11,'2023-08-15');
INSERT INTO "Назначения" VALUES(13,13,12,'2023-06-01');
INSERT INTO "Назначения" VALUES(14,14,13,'2023-09-01');
INSERT INTO "Назначения" VALUES(15,15,14,'2023-09-15');
INSERT INTO "Назначения" VALUES(16,16,15,'2023-10-01');
INSERT INTO "Назначения" VALUES(17,17,16,'2023-10-02');
INSERT INTO "Назначения" VALUES(18,18,17,'2023-10-15');
INSERT INTO "Назначения" VALUES(19,19,18,'2023-11-01');
INSERT INTO "Назначения" VALUES(20,20,19,'2023-11-15');
INSERT INTO "Назначения" VALUES(21,21,20,'2023-12-01');
INSERT INTO "Назначения" VALUES(22,22,21,'2023-12-02');
INSERT INTO "Назначения" VALUES(23,23,22,'2023-12-15');
INSERT INTO "Назначения" VALUES(24,24,23,'2023-12-20');
INSERT INTO "Назначения" VALUES(25,1,23,'2023-12-20');
INSERT INTO "Назначения" VALUES(26,2,4,'2023-06-01');
INSERT INTO "Назначения" VALUES(27,3,4,'2023-06-01');
INSERT INTO "Назначения" VALUES(28,4,5,'2023-06-15');
INSERT INTO "Назначения" VALUES(29,5,5,'2023-06-15');
INSERT INTO "Назначения" VALUES(30,6,5,'2023-06-15');
INSERT INTO "Назначения" VALUES(31,7,6,'2023-06-20');
INSERT INTO "Назначения" VALUES(32,8,6,'2023-06-20');
INSERT INTO "Назначения" VALUES(33,9,7,'2023-07-01');
INSERT INTO "Назначения" VALUES(34,10,7,'2023-07-01');
INSERT INTO "Назначения" VALUES(35,11,7,'2023-07-01');
INSERT INTO "Назначения" VALUES(36,12,8,'2023-07-10');
INSERT INTO "Назначения" VALUES(37,13,8,'2023-07-10');
INSERT INTO "Назначения" VALUES(38,14,9,'2023-07-15');
INSERT INTO "Назначения" VALUES(39,15,9,'2023-07-15');
INSERT INTO "Назначения" VALUES(40,16,9,'2023-07-15');
INSERT INTO "Назначения" VALUES(41,17,10,'2023-08-01');
INSERT INTO "Назначения" VALUES(42,18,10,'2023-08-01');
INSERT INTO "Назначения" VALUES(43,19,11,'2023-08-15');
INSERT INTO "Назначения" VALUES(44,20,11,'2023-08-15');
INSERT INTO "Назначения" VALUES(45,21,11,'2023-08-15');
INSERT INTO "Назначения" VALUES(46,22,12,'2023-06-01');
INSERT INTO "Назначения" VALUES(47,23,12,'2023-06-01');
INSERT INTO "Назначения" VALUES(48,24,13,'2023-09-01');
INSERT INTO "Назначения" VALUES(49,1,13,'2023-09-01');
INSERT INTO "Назначения" VALUES(50,2,13,'2023-09-01');
CREATE TABLE Статусы (
  ID_Статуса INTEGER PRIMARY KEY,
  Название_статуса TEXT NOT NULL
);
INSERT INTO "Статусы" VALUES(1,'В работе');
INSERT INTO "Статусы" VALUES(2,'Завершено');
INSERT INTO "Статусы" VALUES(3,'На паузе');
INSERT INTO "Статусы" VALUES(4,'Задача не выполнена');
CREATE TABLE Приоритеты (
  ID_Приоритета INTEGER PRIMARY KEY,
  Название_приоритета TEXT NOT NULL
);
INSERT INTO "Приоритеты" VALUES(1,'Высокий');
INSERT INTO "Приоритеты" VALUES(2,'Средний');
INSERT INTO "Приоритеты" VALUES(3,'Низкий');
CREATE TABLE Проекты (
  ID_Проекта INTEGER PRIMARY KEY,
  Название_проекта TEXT NOT NULL,
  Описание_проекта TEXT,
  "ID_Задачи" INTEGER,
  FOREIGN KEY ("ID_Задачи") REFERENCES Задачи (ID_Задачи)
);
INSERT INTO "Проекты" VALUES(1,'Проект A',' Разработка новой мобильной игры',4);
INSERT INTO "Проекты" VALUES(2,'Проект B',' Создание дополнительного контента для существующей игры',7);
INSERT INTO "Проекты" VALUES(3,'Проект C',' Разработка сценария для новой RPG игры',12);
INSERT INTO "Проекты" VALUES(4,'Проект D',' Оптимизация графического движка для улучшения производительности',14);
INSERT INTO "Проекты" VALUES(5,'Проект E',' Создание музыкального сопровождения для новой игры',19);
INSERT INTO "Проекты" VALUES(6,'Проект F',' Разработка искусственного интеллекта для врагов в игре',21);
INSERT INTO "Проекты" VALUES(7,'Проект G',' Перевод игры на несколько языков',22);
CREATE TABLE Комментарии (
  ID_Комментария INTEGER PRIMARY KEY,
  "ID_Пользователя" INTEGER,
  "ID_Задачи" INTEGER,
  Текст_комментария TEXT,
  Дата_комментария DATE,
  FOREIGN KEY ("ID_Пользователя") REFERENCES Пользователи (ID_Пользователя),
  FOREIGN KEY ("ID_Задачи") REFERENCES Задачи (ID_Задачи)
);
INSERT INTO "Комментарии" VALUES(1,16,11,' Начинаю работу над задачей','2023-12-01');
INSERT INTO "Комментарии" VALUES(2,22,7,' Задача выполнена','2023-12-05');
INSERT INTO "Комментарии" VALUES(3,7,23,' Нужна помощь','2023-12-10');
INSERT INTO "Комментарии" VALUES(4,18,4,' Задача выполнена но ничего не работает','2023-12-12');
INSERT INTO "Комментарии" VALUES(5,3,12,' Ничего не понимаю...','2023-12-06');
CREATE TABLE Документы (
  ID_Документа INTEGER PRIMARY KEY,
  Название_документа TEXT NOT NULL,
  Описание_документа TEXT,
  ID_Задачи INTEGER,
  Дата_создания DATE,
  Ссылка_на_файл TEXT,
  FOREIGN KEY (ID_Задачи) REFERENCES Задачи (ID_Задачи)
);
INSERT INTO "Документы" VALUES(1,'Дизайн персонажей','Концепт-арт и описания персонажей для новой игры',5,'2023-06-30','Файл №1');
INSERT INTO "Документы" VALUES(2,'Сценарий игры','Полный сценарий для новой игры',6,'2023-07-01','Файл №2');
INSERT INTO "Документы" VALUES(3,'Музыкальные треки','Список музыкальных треков для игры',8,'2023-08-10','Файл №3');
INSERT INTO "Документы" VALUES(4,'Тестовый отчет','Отчёт о результатах тестирования игры',9,'2023-07-20','Файл №4');
INSERT INTO "Документы" VALUES(5,'План маркетинга','План маркетинговой кампании для продвижения игры',11,'2023-08-20','Файл №5');
INSERT INTO "Документы" VALUES(6,'Документация API','Документация по API для разработчиков',7,'2023-07-20','Файл №6');
CREATE TABLE Теги (
  ID_Тега INTEGER PRIMARY KEY,
  Название_тега TEXT NOT NULL
);
INSERT INTO "Теги" VALUES(1,'! Важное');
INSERT INTO "Теги" VALUES(2,'Графика');
INSERT INTO "Теги" VALUES(3,'Программирование');
INSERT INTO "Теги" VALUES(4,'Дизайн');
INSERT INTO "Теги" VALUES(5,'Музыка');
INSERT INTO "Теги" VALUES(6,'Тестирование');
INSERT INTO "Теги" VALUES(7,'Оптимизация');
CREATE TABLE Назначения_тегов (
  ID_Назначения_тегов INTEGER PRIMARY KEY,
  "ID_Задачи" INTEGER,
  "ID_Тега" INTEGER,
  FOREIGN KEY ("ID_Задачи") REFERENCES Задачи (ID_Задачи),
  FOREIGN KEY ("ID_Тега") REFERENCES Теги (ID_Тега)
);
INSERT INTO "Назначения_тегов" VALUES(1,1,1);
INSERT INTO "Назначения_тегов" VALUES(2,5,6);
INSERT INTO "Назначения_тегов" VALUES(3,6,1);
INSERT INTO "Назначения_тегов" VALUES(4,7,2);
INSERT INTO "Назначения_тегов" VALUES(5,5,4);
INSERT INTO "Назначения_тегов" VALUES(6,9,7);
INSERT INTO "Назначения_тегов" VALUES(7,7,4);
INSERT INTO "Назначения_тегов" VALUES(8,7,3);
INSERT INTO "Назначения_тегов" VALUES(9,8,6);
INSERT INTO "Назначения_тегов" VALUES(10,13,7);
INSERT INTO "Назначения_тегов" VALUES(11,14,7);
INSERT INTO "Назначения_тегов" VALUES(12,15,6);
INSERT INTO "Назначения_тегов" VALUES(13,16,5);
INSERT INTO "Назначения_тегов" VALUES(14,17,1);
INSERT INTO "Назначения_тегов" VALUES(15,20,6);
INSERT INTO "Назначения_тегов" VALUES(16,22,6);
INSERT INTO "Назначения_тегов" VALUES(17,23,7);
COMMIT;

-- database: todolist.db
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

CREATE TABLE Пользователи (
  ID_Пользователя INTEGER PRIMARY KEY,
  Имя_пользователя TEXT NOT NULL,
  Адрес_электронной_почты TEXT,
  ID_Роли INTEGER,
  FOREIGN KEY (ID_Роли) REFERENCES Роли (ID_Роли)
);

CREATE TABLE Роли (
  ID_Роли INTEGER PRIMARY KEY,
  Название_роли TEXT NOT NULL,
  Описание TEXT
);

CREATE TABLE Назначения (
  ID_Назначения INTEGER PRIMARY KEY,
  ID_пользователя INTEGER,
  ID_задачи INTEGER,
  Дата_назначения DATE,
  FOREIGN KEY (ID_пользователя) REFERENCES Пользователи (ID_Пользователя),
  FOREIGN KEY (ID_задачи) REFERENCES Задачи (ID_Задачи)
);

CREATE TABLE Статусы (
  ID_Статуса INTEGER PRIMARY KEY,
  Название_статуса TEXT NOT NULL
);

CREATE TABLE Приоритеты (
  ID_Приоритета INTEGER PRIMARY KEY,
  Название_приоритета TEXT NOT NULL
);

CREATE TABLE Проекты (
  ID_Проекта INTEGER PRIMARY KEY,
  Название_проекта TEXT NOT NULL,
  Описание_проекта TEXT,
  ID_задачи INTEGER,
  FOREIGN KEY (ID_задачи) REFERENCES Задачи (ID_Задачи)
);

CREATE TABLE Комментарии (
  ID_Комментария INTEGER PRIMARY KEY,
  ID_пользователя INTEGER,
  ID_задачи INTEGER,
  Текст_комментария TEXT,
  Дата_комментария DATE,
  FOREIGN KEY (ID_пользователя) REFERENCES Пользователи (ID_Пользователя),
  FOREIGN KEY (ID_задачи) REFERENCES Задачи (ID_Задачи)
);

CREATE TABLE Документы (
  ID_Документа INTEGER PRIMARY KEY,
  Название_документа TEXT NOT NULL,
  Описание_документа TEXT,
  ID_Задачи INTEGER,
  Дата_создания DATE,
  Ссылка_на_файл TEXT,
  FOREIGN KEY (ID_Задачи) REFERENCES Задачи (ID_Задачи)
);

CREATE TABLE Теги (
  ID_Тега INTEGER PRIMARY KEY,
  Название_тега TEXT NOT NULL
);

CREATE TABLE Назначения_тегов (
  ID_Назначения_тегов INTEGER PRIMARY KEY,
  ID_задачи INTEGER,
  ID_тега INTEGER,
  FOREIGN KEY (ID_задачи) REFERENCES Задачи (ID_Задачи),
  FOREIGN KEY (ID_тега) REFERENCES Теги (ID_Тега)
);
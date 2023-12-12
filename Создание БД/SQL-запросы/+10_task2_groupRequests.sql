--- Запрос выводит: Количество задач для каждого пользователя (отсортированные по убыванию)

SELECT Пользователи.Имя_пользователя, COUNT(Задачи.ID_Задачи) AS Количество_задач
FROM Пользователи
JOIN Назначения ON Пользователи.ID_Пользователя = Назначения.ID_Пользователя
JOIN Задачи ON Назначения.ID_Задачи = Задачи.ID_Задачи
GROUP BY Пользователи.Имя_пользователя
ORDER BY Количество_задач DESC
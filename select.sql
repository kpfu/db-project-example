1. Выбрать всех студентов (ID, ФИО) из группы X и отсортировать по дате рождения.
SELECT id, surname, first_name, patronymic_name
FROM students
WHERE group_id = 1
ORDER BY birthday;
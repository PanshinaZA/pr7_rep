## Практическая работа №7. Работа с внешними приложениями
## Цель:
Научиться импортировать и экспортировать данные в базу данных SQL. Работа включает в себя загрузку данных из внешних источников в таблицы базы данных, а также экспорт данных из базы данных в различные форматы. Научиться работать с внешними данными, преобразовывать их в нужный формат и интегрировать с существующими таблицами в базе данных.

## Ход работы:
1. Подключение к базе данных и создание таблиц:

   Установлено соединение с PostgreSQL через psycopg2.
   Создана база данных medical_db и таблицы: Hospital, Doctor, Patients
![1](https://github.com/user-attachments/assets/f5ea485c-5442-492b-a3bd-5c379aca4d02)
![2](https://github.com/user-attachments/assets/91073c8b-a041-4730-9859-f9155552ae03)
- `create_db_and_tables.sql` — SQL скрипт для создания базы данных и таблиц, файл находится в репозитории.
2. Создание ERD диаграммы
  ![erd_diagram](https://github.com/user-attachments/assets/40a68eb2-6cfd-422d-92ee-3aa2980f2dc8)
- `erd_diagram.png` — ERD диаграмма схемы базы данных, файл находится в репозитории.
3. Импорт данных: добавлены новые данные в таблицы Hospital, Patients через psycopg2 с помощью sql-запросов.
![5](https://github.com/user-attachments/assets/297bc501-925e-4c07-ae52-9bb9e6e618af)
4. Экспорт данных. Используем модуль Python `csv` для сохранения листа пациентов старше 50.
![6](https://github.com/user-attachments/assets/f72aba54-5365-4e61-a681-8b69ee45437f)
![7](https://github.com/user-attachments/assets/9e435a0b-6701-4ec1-9055-67793fa4de12)
Получаем csv файл - `patients_over_50.csv`, файл находится в репозитории.
5. Выполнены все индивидуальные задания варианта 17.
  - Создайте таблицу "Patients" с полями "ID", "NAME", "AGE", "DIAGNOSIS".
  - Вставьте 10 пациентов в таблицу "Patients".

![8](https://github.com/user-attachments/assets/5d802330-3926-4454-b1e0-d1f15ae1e3e3)

  - Выведите всех пациентов старше 50 лет.
![3](https://github.com/user-attachments/assets/5922c031-03be-4077-ac93-32fd5dbb7a6c)
Среда VS Code не позволяет при выводе увидеть все данные, потому сохраним результат в csv-файл - `patients_over_50.csv`
  - Обновите диагноз пациента с ID=2.
![4](https://github.com/user-attachments/assets/e7b1038f-da61-41a6-8b4d-e118b2b215c6)
6. Визуализация данных(индивидуальное задание 5)
  - Создайте линейный график для анализа возраста пациентов по диагнозам.
![9](https://github.com/user-attachments/assets/04f66ab3-37c7-4df1-9875-8cb1f194bb7f)
- `Panshina_Zinaida_Alekseevna.ipynb` — Jupyter Notebook с выполнением всех заданий, файл находится в репозитории.
## Как запустить:
1. Установите PostgreSQL и настройте доступ к базе данных.
2. Выполните SQL-скрипт `create_db_and_tables.sql` для создания базы данных и таблиц.
3. Откройте и выполните Jupyter Notebook для проверки выполнения заданий.

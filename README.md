# Практическая работа №7. Работа с внешними приложениями
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
4. Экспорт данных. Данные успешно загружены в файл.
![image](https://github.com/user-attachments/assets/ab7e76f3-7785-4d9f-876e-a70938d9cef0)
![image](https://github.com/user-attachments/assets/5579cefd-7657-4a26-b31f-ba83c1698c61)

Получаем csv файл - `age_diagnosis.csv`, файл находится в репозитории.

5. Индивидуальные задания. Вариант 17.
  - Создайте таблицу "Patients" с полями "ID", "NAME", "AGE", "DIAGNOSIS".
  - Вставьте 10 пациентов в таблицу "Patients".                                                                              
![8](https://github.com/user-attachments/assets/5d802330-3926-4454-b1e0-d1f15ae1e3e3)

  - Выведите всех пациентов старше 50 лет.
![image](https://github.com/user-attachments/assets/ad8800da-03ca-4ebd-a0d5-f09fd8c4af60)

  - Обновите диагноз пациента с ID=2.
![4](https://github.com/user-attachments/assets/e7b1038f-da61-41a6-8b4d-e118b2b215c6)
6. Визуализация данных(индивидуальное задание 5)
  - Создайте линейный график для анализа возраста пациентов по диагнозам.

     Для выполнения задания сохраним данные о возрасте и диагнозе всех пациентов в CSV-файл. Затем загрузим его на платформе Yandex Datalens и построим линейный график:
![image](https://github.com/user-attachments/assets/de6a8bff-6526-4bce-870e-b508ebccacba)

https://datalens.yandex/kwmms0g0gkso6 - ссылка на чарт в Yandex Datalens.
- `Panshina_Zinaida_Alekseevna.ipynb` — Jupyter Notebook с выполнением всех заданий, файл находится в репозитории.
## Выводы:
В ходе выполнения лабораторной работы были успешно освоены методы импорта и экспорта данных через внешния приложения. Работа была произведена в среде Visual Studio Code, где был написан весь python-скрипт с использованием библиотек psycopg2 и matplotlib.

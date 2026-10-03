CREATE DATABASE test_arpu;

-- Таблица 1: users (Пользователи)
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    registration_date DATE,
    country VARCHAR(50),
    acquisition_channel VARCHAR(100),
    is_trial_user BOOLEAN,
    last_activity_date DATE
);

-- Таблица 2: courses (Каталог курсов/продуктов)
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    course_type VARCHAR(50),
    price DECIMAL(10, 2),
    duration_months INT
);

-- Таблица 3: purchases (Покупки)
CREATE TABLE purchases (
    purchase_id INT PRIMARY KEY,
    user_id INT,
    course_id INT,
    purchase_date DATE,
    actual_price DECIMAL(10, 2),
    payment_method VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Наполнение таблицы users (100 пользователей)
INSERT INTO users (user_id, registration_date, country, acquisition_channel, is_trial_user, last_activity_date) VALUES
(1001, '2024-01-01', 'Казахстан', 'Google Ads', TRUE, '2024-05-25'),
(1002, '2024-01-05', 'Казахстан', 'Organic Search', FALSE, '2024-02-10'),
(1003, '2024-01-07', 'Россия', 'Social Media', TRUE, '2024-06-01'),
(1004, '2024-01-10', 'Казахстан', 'Referral', FALSE, '2024-04-15'),
(1005, '2024-01-12', 'Россия', 'Google Ads', TRUE, '2024-06-12'),
(1006, '2024-01-15', 'Беларусь', 'Organic Search', FALSE, '2024-03-05'),
(1007, '2024-01-18', 'Казахстан', 'Social Media', TRUE, '2024-05-28'),
(1008, '2024-01-20', 'Россия', 'Google Ads', FALSE, '2024-03-10'),
(1009, '2024-01-22', 'Украина', 'Referral', TRUE, '2024-06-08'),
(1010, '2024-01-25', 'Казахстан', 'Organic Search', FALSE, '2024-03-12'),
(1011, '2024-01-28', 'Казахстан', 'Social Media', TRUE, '2024-06-18'),
(1012, '2024-02-01', 'Россия', 'Google Ads', FALSE, '2024-04-05'),
(1013, '2024-02-03', 'Беларусь', 'Referral', TRUE, '2024-06-03'),
(1014, '2024-02-06', 'Казахстан', 'Organic Search', FALSE, '2024-04-22'),
(1015, '2024-02-09', 'Россия', 'Social Media', TRUE, '2024-06-10'),
(1016, '2024-02-12', 'Казахстан', 'Google Ads', FALSE, '2024-05-18'),
(1017, '2024-02-15', 'Украина', 'Organic Search', TRUE, '2024-06-05'),
(1018, '2024-02-18', 'Казахстан', 'Social Media', FALSE, '2024-05-03'),
(1019, '2024-02-20', 'Россия', 'Referral', TRUE, '2024-06-15'),
(1020, '2024-02-23', 'Казахстан', 'Google Ads', FALSE, '2024-05-08'),
(1021, '2024-02-25', 'Беларусь', 'Organic Search', TRUE, '2024-06-11'),
(1022, '2024-02-28', 'Казахстан', 'Social Media', FALSE, '2024-05-13'),
(1023, '2024-03-01', 'Россия', 'Referral', TRUE, '2024-06-07'),
(1024, '2024-03-04', 'Казахстан', 'Google Ads', FALSE, '2024-05-22'),
(1025, '2024-03-07', 'Украина', 'Organic Search', TRUE, '2024-06-14'),
(1026, '2024-03-10', 'Казахстан', 'Social Media', FALSE, '2024-05-30'),
(1027, '2024-03-13', 'Россия', 'Google Ads', TRUE, '2024-06-17'),
(1028, '2024-03-16', 'Беларусь', 'Referral', FALSE, '2024-06-02'),
(1029, '2024-03-19', 'Казахстан', 'Organic Search', TRUE, '2024-06-19'),
(1030, '2024-03-22', 'Россия', 'Social Media', FALSE, '2024-06-04'),
(1031, '2024-03-25', 'Казахстан', 'Google Ads', TRUE, '2024-06-20'),
(1032, '2024-03-28', 'Украина', 'Referral', FALSE, '2024-06-06'),
(1033, '2024-04-01', 'Казахстан', 'Organic Search', TRUE, '2024-06-21'),
(1034, '2024-04-04', 'Россия', 'Social Media', FALSE, '2024-06-09'),
(1035, '2024-04-07', 'Беларусь', 'Google Ads', TRUE, '2024-06-22'),
(1036, '2024-04-10', 'Казахстан', 'Referral', FALSE, '2024-06-13'),
(1037, '2024-04-13', 'Россия', 'Organic Search', TRUE, '2024-06-23'),
(1038, '2024-04-16', 'Украина', 'Social Media', FALSE, '2024-06-16'),
(1039, '2024-04-19', 'Казахстан', 'Google Ads', TRUE, '2024-06-24'),
(1040, '2024-04-22', 'Россия', 'Referral', FALSE, '2024-06-19'),
(1041, '2024-04-25', 'Казахстан', 'Organic Search', TRUE, '2024-06-25'),
(1042, '2024-04-28', 'Беларусь', 'Social Media', FALSE, '2024-06-20'),
(1043, '2024-05-01', 'Казахстан', 'Google Ads', TRUE, '2024-06-26'),
(1044, '2024-05-04', 'Россия', 'Referral', FALSE, '2024-06-22'),
(1045, '2024-05-07', 'Украина', 'Organic Search', TRUE, '2024-06-27'),
(1046, '2024-05-10', 'Казахстан', 'Social Media', FALSE, '2024-06-25'),
(1047, '2024-05-13', 'Россия', 'Google Ads', TRUE, '2024-06-28'),
(1048, '2024-05-16', 'Беларусь', 'Referral', FALSE, '2024-06-27'),
(1049, '2024-05-19', 'Казахстан', 'Organic Search', TRUE, '2024-06-29'),
(1050, '2024-05-22', 'Россия', 'Social Media', FALSE, '2024-06-28'),
(1051, '2024-05-25', 'Казахстан', 'Google Ads', TRUE, '2024-06-30'),
(1052, '2024-05-28', 'Украина', 'Referral', FALSE, '2024-06-29'),
(1053, '2024-06-01', 'Казахстан', 'Organic Search', TRUE, '2024-07-01'),
(1054, '2024-06-04', 'Россия', 'Social Media', FALSE, '2024-07-02'),
(1055, '2024-06-07', 'Беларусь', 'Google Ads', TRUE, '2024-07-03'),
(1056, '2024-06-10', 'Казахстан', 'Referral', FALSE, '2024-07-04'),
(1057, '2024-06-13', 'Россия', 'Organic Search', TRUE, '2024-07-05'),
(1058, '2024-06-16', 'Украина', 'Social Media', FALSE, '2024-07-06'),
(1059, '2024-06-19', 'Казахстан', 'Google Ads', TRUE, '2024-07-07'),
(1060, '2024-06-22', 'Россия', 'Referral', FALSE, '2024-07-08'),
(1061, '2024-06-25', 'Казахстан', 'Organic Search', TRUE, '2024-07-09'),
(1062, '2024-06-28', 'Беларусь', 'Social Media', FALSE, '2024-07-10'),
(1063, '2024-07-01', 'Казахстан', 'Google Ads', TRUE, '2024-07-11'),
(1064, '2024-07-04', 'Россия', 'Referral', FALSE, '2024-07-12'),
(1065, '2024-07-07', 'Украина', 'Organic Search', TRUE, '2024-07-13'),
(1066, '2024-07-10', 'Казахстан', 'Social Media', FALSE, '2024-07-14'),
(1067, '2024-07-13', 'Россия', 'Google Ads', TRUE, '2024-07-15'),
(1068, '2024-07-16', 'Беларусь', 'Referral', FALSE, '2024-07-16'),
(1069, '2024-07-19', 'Казахстан', 'Organic Search', TRUE, '2024-07-17'),
(1070, '2024-07-22', 'Россия', 'Social Media', FALSE, '2024-07-18'),
(1071, '2024-07-25', 'Казахстан', 'Google Ads', TRUE, '2024-07-19'),
(1072, '2024-07-28', 'Украина', 'Referral', FALSE, '2024-07-20'),
(1073, '2024-08-01', 'Казахстан', 'Organic Search', TRUE, '2024-08-01'),
(1074, '2024-08-04', 'Россия', 'Social Media', FALSE, '2024-08-02'),
(1075, '2024-08-07', 'Беларусь', 'Google Ads', TRUE, '2024-08-03'),
(1076, '2024-08-10', 'Казахстан', 'Referral', FALSE, '2024-08-04'),
(1077, '2024-08-13', 'Россия', 'Organic Search', TRUE, '2024-08-05'),
(1078, '2024-08-16', 'Украина', 'Social Media', FALSE, '2024-08-06'),
(1079, '2024-08-19', 'Казахстан', 'Google Ads', TRUE, '2024-08-07'),
(1080, '2024-08-22', 'Россия', 'Referral', FALSE, '2024-08-08'),
(1081, '2024-08-25', 'Казахстан', 'Organic Search', TRUE, '2024-08-09'),
(1082, '2024-08-28', 'Беларусь', 'Social Media', FALSE, '2024-08-10'),
(1083, '2024-09-01', 'Казахстан', 'Google Ads', TRUE, '2024-09-01'),
(1084, '2024-09-04', 'Россия', 'Referral', FALSE, '2024-09-02'),
(1085, '2024-09-07', 'Украина', 'Organic Search', TRUE, '2024-09-03'),
(1086, '2024-09-10', 'Казахстан', 'Social Media', FALSE, '2024-09-04'),
(1087, '2024-09-13', 'Россия', 'Google Ads', TRUE, '2024-09-05'),
(1088, '2024-09-16', 'Беларусь', 'Referral', FALSE, '2024-09-06'),
(1089, '2024-09-19', 'Казахстан', 'Organic Search', TRUE, '2024-09-07'),
(1090, '2024-09-22', 'Россия', 'Social Media', FALSE, '2024-09-08'),
(1091, '2024-09-25', 'Казахстан', 'Google Ads', TRUE, '2024-09-09'),
(1092, '2024-09-28', 'Украина', 'Referral', FALSE, '2024-09-10'),
(1093, '2024-10-01', 'Казахстан', 'Organic Search', TRUE, '2024-10-01'),
(1094, '2024-10-04', 'Россия', 'Social Media', FALSE, '2024-10-02'),
(1095, '2024-10-07', 'Беларусь', 'Google Ads', TRUE, '2024-10-03'),
(1096, '2024-10-10', 'Казахстан', 'Referral', FALSE, '2024-10-04'),
(1097, '2024-10-13', 'Россия', 'Organic Search', TRUE, '2024-10-05'),
(1098, '2024-10-16', 'Украина', 'Social Media', FALSE, '2024-10-06'),
(1099, '2024-10-19', 'Казахстан', 'Google Ads', TRUE, '2024-10-07'),
(1100, '2024-10-22', 'Россия', 'Referral', FALSE, '2024-10-08');


-- Наполнение таблицы courses (реалистичные цены в тенге)
INSERT INTO courses (course_id, course_name, course_type, price, duration_months) VALUES
(1, 'Курс: Аналитик данных с нуля (6 мес)', 'Курс', 600000.00, 6),
(2, 'Курс: Data Scientist PRO (12 мес)', 'Курс', 1200000.00, 12),
(3, 'Курс: SQL для начинающих (1 мес)', 'Курс', 75000.00, 1),
(4, 'Годовая подписка "Все курсы Premium"', 'Подписка', 750000.00, 12),
(5, 'Ежемесячная подписка "Expert"', 'Подписка', 80000.00, 1),
(6, 'Интенсив: A/B-тестирование (3 дня)', 'Вебинар', 45000.00, 0),
(7, 'Менторство: Карьера в Data (3 мес)', 'Наставничество', 300000.00, 3),
(8, 'Мастер-класс: Power BI Дашборды', 'Вебинар', 25000.00, 0),
(9, 'Курс: Основы Python для анализа (2 мес)', 'Курс', 200000.00, 2);


-- Наполнение таблицы purchases (50+ транзакций, с учетом скидок и повторных покупок)
INSERT INTO purchases (purchase_id, user_id, course_id, purchase_date, actual_price, payment_method) VALUES
(1, 1001, 1, '2024-01-20', 600000.00, 'Рассрочка'), -- AD
(2, 1003, 5, '2024-01-25', 75000.00, 'Карта'), -- Подписка Expert
(3, 1005, 9, '2024-02-01', 200000.00, 'Карта'), -- Python
(4, 1001, 6, '2024-02-10', 45000.00, 'Карта'), -- AD юзер купил вебинар
(5, 1007, 3, '2024-02-15', 70000.00, 'Карта'), -- SQL со скидкой
(6, 1009, 1, '2024-02-28', 550000.00, 'Рассрочка'), -- AD со скидкой
(7, 1003, 5, '2024-03-01', 80000.00, 'Карта'), -- Подписка Expert (повторная)
(8, 1011, 4, '2024-03-05', 750000.00, 'Рассрочка'), -- Premium
(9, 1013, 7, '2024-03-10', 300000.00, 'Карта'), -- Менторство
(10, 1015, 1, '2024-03-15', 600000.00, 'Карта'), -- AD
(11, 1017, 8, '2024-03-20', 25000.00, 'Карта'), -- Power BI Вебинар
(12, 1019, 2, '2024-03-25', 1100000.00, 'Рассрочка'), -- DS PRO со скидкой
(13, 1001, 5, '2024-04-01', 80000.00, 'Карта'), -- AD юзер купил подписку
(14, 1021, 3, '2024-04-05', 75000.00, 'Карта'),
(15, 1023, 1, '2024-04-10', 600000.00, 'Рассрочка'),
(16, 1025, 9, '2024-04-15', 200000.00, 'Карта'),
(17, 1027, 5, '2024-04-20', 80000.00, 'Карта'),
(18, 1029, 6, '2024-04-25', 45000.00, 'Карта'),
(19, 1031, 4, '2024-05-01', 750000.00, 'Рассрочка'),
(20, 1033, 1, '2024-05-05', 600000.00, 'Карта'),
(21, 1035, 7, '2024-05-10', 300000.00, 'Карта'),
(22, 1037, 8, '2024-05-15', 25000.00, 'Карта'),
(23, 1039, 2, '2024-05-20', 1200000.00, 'Рассрочка'),
(24, 1041, 1, '2024-05-25', 600000.00, 'Карта'),
(25, 1043, 3, '2024-06-01', 75000.00, 'Карта'),
(26, 1045, 5, '2024-06-05', 80000.00, 'Карта'),
(27, 1047, 1, '2024-06-10', 600000.00, 'Рассрочка'),
(28, 1049, 9, '2024-06-15', 200000.00, 'Карта'),
(29, 1051, 6, '2024-06-20', 45000.00, 'Карта'),
(30, 1053, 4, '2024-06-25', 750000.00, 'Карта'),
(31, 1055, 1, '2024-07-01', 600000.00, 'Рассрочка'),
(32, 1057, 7, '2024-07-05', 300000.00, 'Карта'),
(33, 1059, 8, '2024-07-10', 25000.00, 'Карта'),
(34, 1061, 2, '2024-07-15', 1200000.00, 'Рассрочка'),
(35, 1063, 1, '2024-07-20', 600000.00, 'Карта'),
(36, 1065, 3, '2024-07-25', 75000.00, 'Карта'),
(37, 1067, 5, '2024-08-01', 80000.00, 'Карта'),
(38, 1069, 1, '2024-08-05', 600000.00, 'Рассрочка'),
(39, 1071, 9, '2024-08-10', 200000.00, 'Карта'),
(40, 1073, 6, '2024-08-15', 45000.00, 'Карта'),
(41, 1075, 4, '2024-08-20', 750000.00, 'Карта'),
(42, 1077, 1, '2024-08-25', 600000.00, 'Рассрочка'),
(43, 1079, 7, '2024-09-01', 300000.00, 'Карта'),
(44, 1081, 8, '2024-09-05', 25000.00, 'Карта'),
(45, 1083, 2, '2024-09-10', 1200000.00, 'Рассрочка'),
(46, 1085, 1, '2024-09-15', 600000.00, 'Карта'),
(47, 1087, 3, '2024-09-20', 75000.00, 'Карта'),
(48, 1089, 5, '2024-09-25', 80000.00, 'Карта'),
(49, 1091, 1, '2024-10-01', 600000.00, 'Рассрочка'),
(50, 1093, 9, '2024-10-05', 200000.00, 'Карта'),
(51, 1095, 6, '2024-10-10', 45000.00, 'Карта'),
(52, 1097, 4, '2024-10-15', 750000.00, 'Карта');



SELECT * FROM users;
select * from courses;
select * from purchases;


-- ARPU (Average Revenue Per User) и ARPPU (Average Revenue Per Paying User)

-- Задача 1.1: ARPU за Сентябрь 2024
-- "Сколько в среднем приносит нам каждый пользователь, который был активен или что-то купил в сентябре?"
SELECT
    SUM(CASE WHEN p.actual_price IS NOT NULL THEN p.actual_price ELSE 0 END) AS total_revenue_sept,
    COUNT(DISTINCT u.user_id) AS total_active_users_sept,
    SUM(CASE WHEN p.actual_price IS NOT NULL THEN p.actual_price ELSE 0 END) * 1.0 / COUNT(DISTINCT u.user_id) AS arpu_sept
FROM
    users u
LEFT JOIN
    purchases p ON u.user_id = p.user_id
WHERE
    u.last_activity_date BETWEEN '2024-09-01' AND '2024-09-30'
    OR p.purchase_date BETWEEN '2024-09-01' AND '2024-09-30';


-- Задача 1.2: ARPPU за Сентябрь 2024
-- "А сколько в среднем приносит каждый, кто РЕАЛЬНО ЗАПЛАТИЛ в сентябре?"
SELECT
    SUM(actual_price) AS total_revenue_sept,
    COUNT(DISTINCT user_id) AS total_paying_users_sept,
    SUM(actual_price) * 1.0 / COUNT(DISTINCT user_id) AS arppu_sept
FROM
    purchases
WHERE
    purchase_date BETWEEN '2024-09-01' AND '2024-09-30';
  
  
-- ARPU и ARPPU в разрезе сегментов.  
    
-- Задача 2.1: ARPU по каналам привлечения
-- "Откуда приходят наши самые "денежные" пользователи в среднем, если считать всех?"
SELECT
    u.acquisition_channel,
    SUM(CASE WHEN p.actual_price IS NOT NULL THEN p.actual_price ELSE 0 END) AS total_revenue,
    COUNT(DISTINCT u.user_id) AS total_users_from_channel,
    SUM(CASE WHEN p.actual_price IS NOT NULL THEN p.actual_price ELSE 0 END) * 1.0 / COUNT(DISTINCT u.user_id) AS arpu_by_channel
FROM
    users u
LEFT JOIN
    purchases p ON u.user_id = p.user_id
GROUP BY
    u.acquisition_channel
ORDER BY
    arpu_by_channel DESC;

-- Задача 2.2: ARPPU по типу курса (за все время, MySQL)
-- "Какие типы наших продуктов покупают люди, и что из них самое прибыльное на одного платящего?"
SELECT
    c.course_type,
    SUM(p.actual_price) AS total_revenue,
    COUNT(DISTINCT p.user_id) AS total_paying_users,
    SUM(p.actual_price) * 1.0 / COUNT(DISTINCT p.user_id) AS arppu_by_course_type
FROM
    purchases p
JOIN
    courses c ON p.course_id = c.course_id
GROUP BY
    c.course_type
ORDER BY
    arppu_by_course_type DESC;

-- Прикольно: ARPPU для пользователей, которые активировали пробный период vs. кто нет (MySQL)
-- "Стоит ли нам вкладываться в пробные периоды? Они приносят более прибыльных клиентов, когда те начинают платить?"
SELECT
    u.is_trial_user,
    SUM(p.actual_price) AS total_revenue,
    COUNT(DISTINCT p.user_id) AS total_paying_users,
    SUM(p.actual_price) * 1.0 / COUNT(DISTINCT p.user_id) AS arppu_for_trial_segment
FROM
    users u
JOIN
    purchases p ON u.user_id = p.user_id
GROUP BY
    u.is_trial_user;
    
    
    
-- Задача 3.1: Время до первой покупки (в днях, MySQL)
-- "Сколько дней в среднем проходит от регистрации до первой покупки?"
SELECT
    u.user_id,
    u.registration_date,
    MIN(p.purchase_date) AS first_purchase_date,
    DATEDIFF(MIN(p.purchase_date), u.registration_date) AS days_to_first_purchase
FROM
    users u
JOIN
    purchases p ON u.user_id = p.user_id
GROUP BY
    u.user_id, u.registration_date
ORDER BY
    days_to_first_purchase;

-- А теперь среднее время до первой покупки (MySQL)
SELECT
    AVG(DATEDIFF(p.first_purchase_date, u.registration_date)) AS avg_days_to_first_purchase
FROM
    users u
JOIN (
    SELECT user_id, MIN(purchase_date) AS first_purchase_date
    FROM purchases
    GROUP BY user_id
) p ON u.user_id = p.user_id;

-- Прикольно: Средний доход с пользователя, который купил в течение 30 дней после регистрации (MySQL)
-- "Насколько ценны для нас быстрые покупатели? Стоит ли их поощрять?"
SELECT
    AVG(total_spent) AS arpu_fast_buyers
FROM (
    SELECT
        u.user_id,
        SUM(p.actual_price) AS total_spent,
        DATEDIFF(MIN(p.purchase_date), u.registration_date) AS days_to_first_purchase
    FROM
        users u
    JOIN
        purchases p ON u.user_id = p.user_id
    GROUP BY
        u.user_id, u.registration_date
    HAVING
        DATEDIFF(MIN(p.purchase_date), u.registration_date) <= 30
) AS subquery;




-- Задача 4.1: Список пользователей, которые НЕ совершили ни одной покупки (MySQL)
SELECT
    u.user_id,
    u.registration_date,
    u.country,
    u.acquisition_channel,
    u.is_trial_user,
    u.last_activity_date
FROM
    users u
LEFT JOIN
    purchases p ON u.user_id = p.user_id
WHERE
    p.purchase_id IS NULL;

-- Задача 4.2: Распределение неплатящих пользователей по каналам привлечения (MySQL)
-- "Откуда приходит больше всего тех, кто не платит? Возможно, там проблема с качеством трафика?"
SELECT
    u.acquisition_channel,
    COUNT(u.user_id) AS non_paying_users_count
FROM
    users u
LEFT JOIN
    purchases p ON u.user_id = p.user_id
WHERE
    p.purchase_id IS NULL
GROUP BY
    u.acquisition_channel
ORDER BY
    non_paying_users_count DESC;
    

-- AOV за все время (MySQL)
-- "Сколько в среднем стоит одна покупка в нашей школе?"
SELECT
    SUM(actual_price) AS total_revenue,
    COUNT(purchase_id) AS total_transactions,
    SUM(actual_price) * 1.0 / COUNT(purchase_id) AS aov
FROM
    purchases;

select * from purchases;

-- AOV за Октябрь 2024 (MySQL)
-- "Как меняется средний чек от месяца к месяцу?"
SELECT
	month(purchase_date) as month_date,
    SUM(actual_price) AS total_revenue_oct,
    COUNT(purchase_id) AS total_transactions_oct,
    SUM(actual_price) * 1.0 / COUNT(purchase_id) AS aov
FROM
    purchases
group by month_date;

-- Прикольно: AOV по типу оплаты (MySQL)
-- "Есть ли разница в среднем чеке в зависимости от того, как пользователь платит? Возможно, рассрочка стимулирует более крупные покупки?"
SELECT
    payment_method,
    SUM(actual_price) AS total_revenue,
    COUNT(purchase_id) AS total_transactions,
    SUM(actual_price) / COUNT(purchase_id) AS aov_by_payment_method
FROM
    purchases
GROUP BY
    payment_method
ORDER BY
    aov_by_payment_method DESC;

-- Прикольно: AOV по типу курса (MySQL)
-- "Какой тип курса имеет самый высокий средний чек? Что чаще покупают одним разом?"
SELECT
    c.course_type,
    SUM(p.actual_price) AS total_revenue,
    COUNT(p.purchase_id) AS total_transactions,
    SUM(p.actual_price) * 1.0 / COUNT(p.purchase_id) AS aov_by_course_type
FROM
    purchases p
JOIN
    courses c ON p.course_id = c.course_id
GROUP BY
    c.course_type
ORDER BY
    aov_by_course_type DESC;
    
    

SELECT
    u.user_id,
    SUM(p.actual_price) AS lifetime_value
FROM
    users u
JOIN
    purchases p ON u.user_id = p.user_id
GROUP BY
    u.user_id
ORDER BY
    lifetime_value DESC
LIMIT 10; -- Топ-10 пользователей по LTV
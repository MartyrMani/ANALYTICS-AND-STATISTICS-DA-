#Сколько в среднем клиент тратит за одну оплату?
SELECT
	u.user_id,
    u.name,
    AVG(p.amount * 1.0) AS AOV
FROM users u
LEFT JOIN payments p ON p.user_id = u.user_id
GROUP BY u.user_id, u.name
ORDER BY u.user_id;

#Сколько денег в общей сложности принёс каждый клиент за всё время использования сервиса?
SELECT
	u.user_id,
    u.name,
    SUM(CASE
			WHEN p.amount IS NOT NULL THEN p.amount
            ELSE 0
		END) AS LTV
FROM users AS u
LEFT JOIN payments AS p ON p.user_id = u.user_id
GROUP BY u.user_id, u.name
ORDER BY u.user_id;

#Кто входит в топ-5 самых доходных клиентов?
SELECT
    u.user_id,
    u.name,
    SUM(p.amount) AS LTV
FROM users u
JOIN payments p ON u.user_id = p.user_id
GROUP BY u.user_id, u.name
ORDER BY LTV DESC
LIMIT 5;

#Представьте, что ваш маркетинговый отдел предлагает тратить 3 000 ₸ на привлечение одного нового клиента. 
#Стоит ли это делать, если опираться на текущий средний LTV? Почему?
SELECT
    SUM(CASE
            WHEN p.amount IS NOT NULL THEN p.amount
            ELSE 0
        END) AS total_revenue,
    COUNT(DISTINCT u.user_id) AS total_users,
    SUM(CASE
            WHEN p.amount IS NOT NULL THEN p.amount
            ELSE 0
        END) * 1.0 / COUNT(DISTINCT u.user_id) AS average_LTV
FROM users u
LEFT JOIN payments p ON u.user_id = p.user_id;
#Это будет невыгодно так как это превышает среднего дохода от клиента за всё время.
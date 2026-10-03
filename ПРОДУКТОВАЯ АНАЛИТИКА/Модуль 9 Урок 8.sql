#Сколько в среднем денег приносит один пользователь (включая и тех, кто ничего не платил)?
SELECT
	SUM(CASE
			WHEN p.amount IS NOT NULL THEN p.amount
			ELSE 0
		END) AS total_revenue,
	COUNT(DISTINCT u.user_id) AS total_users,
    SUM(CASE
			WHEN p.amount IS NOT NULL THEN p.amount
            ELSE 0
		END) * 1.0 / COUNT(DISTINCT u.user_id) AS ARPU
FROM users AS u
LEFT JOIN payments AS p ON p.user_id = u.user_id;

#Сколько в среднем приносит один платящий пользователь?
SELECT
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT user_id) AS total_paying_users,
    SUM(amount) * 1.0 / COUNT(DISTINCT user_id) AS ARPPU
FROM payments;

#Какой процент пользователей совершал хотя бы один платёж?
SELECT
    COUNT(DISTINCT p.user_id) AS paying_users,
    COUNT(DISTINCT u.user_id) AS total_users,
    COUNT(DISTINCT p.user_id) * 100.0 / COUNT(DISTINCT u.user_id) AS paying_users_percent
FROM users u
LEFT JOIN payments p ON u.user_id = p.user_id;

#В чём разница и почему ARPPU всегда выше?
#ARPU показывает среднюю выручку со всех пользователей, а ARPPU показывает среднюю выручку только с платящих пользователей.
#ARPPU выше ARPU, потому что общая выручка делится на меньшее количество пользователей.
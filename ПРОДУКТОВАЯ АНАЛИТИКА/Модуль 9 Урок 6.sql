#DAU
SELECT payment_date AS DATE,
		COUNT(user_id) AS DAU
FROM payments
GROUP BY payment_date
ORDER BY payment_date;

#WAU
SELECT WEEK(payment_date) AS WEEK,
		COUNT(user_id) AS WAU
FROM payments
GROUP BY WEEK(payment_date)
ORDER BY WEEK(payment_date);

#MAU
SELECT MONTH(payment_date) AS MONTH,
		COUNT(user_id) AS MAU
FROM payments
GROUP BY MONTH(payment_date)
ORDER BY MONTH(payment_date);

#Retention Rate
SELECT
	SUM(CASE
			WHEN subscription_count > 1 THEN 1
            ELSE 0
		END) / COUNT(*) * 100 AS Retention_Rate
FROM (
		SELECT
			user_id,
			COUNT(*) AS subscription_count
		FROM subscriptions
        GROUP BY user_id) AS user_subscriptions;

#Churn Rate
SELECT
	SUM(
		CASE
			WHEN subscription_count = 1 THEN 1
            ELSE 0
		END) / COUNT(*) * 100 AS Churn_Rate
FROM (
		SELECT
			user_id,
            COUNT(*) AS subscription_count
		FROM subscriptions
        GROUP BY user_id) AS uses_subscriptions;
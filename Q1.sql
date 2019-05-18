--modify table_name for the name of the table
SELECT num_trans, COUNT(num_trans) AS freq
FROM (SELECT customer_id, COUNT(customer_id) AS num_trans
		FROM table_name --modify
		GROUP BY customer_id) AS trans_freq
GROUP BY num_trans
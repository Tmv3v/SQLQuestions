--modify table_name for the name of the table
SELECT num_trans as at_least_trans, 
	SUM(freq) OVER (ORDER BY num_trans rows unbounded preceding) as cum_freq
	FROM (SELECT num_trans, COUNT(num_trans) AS freq
		FROM (SELECT customer_id, COUNT(customer_id) AS num_trans
		FROM table_name --modify
		GROUP BY customer_id) AS trans_sub
GROUP BY num_trans) AS cum_sub
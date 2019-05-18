--modify table_name for the name of the table
SELECT f1.friend1_id AS fd1, f2.friend1_id AS fd2, COUNT(*) AS num_in_common
FROM table_name f1 join --modify
     table_name f2      --modify
     ON f1.friend2_id = f2.friend2_id
GROUP BY f1.friend1_id, f2.friend1_id
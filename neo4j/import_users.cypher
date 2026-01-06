LOAD CSV WITH HEADERS FROM 'file:///users.csv' AS row
WITH trim(row.user_id) AS userId
WHERE userId IS NOT NULL AND userId <> ''
MERGE (:User {id: userId});

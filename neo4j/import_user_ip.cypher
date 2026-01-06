LOAD CSV WITH HEADERS FROM 'file:///user_ip_rel.csv' AS row
WITH trim(row.user_id) AS userId, trim(row.ip_addr) AS ipAddr
WHERE userId <> '' AND ipAddr <> ''
MATCH (u:User {id: userId})
MERGE (ip:IP {addr: ipAddr})
MERGE (u)-[:USES_IP]->(ip);

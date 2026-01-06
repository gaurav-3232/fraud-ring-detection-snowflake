MATCH (u:User)-[:USES_IP]->(ip:IP)
RETURN ip.addr AS ip, collect(u.id) AS users
HAVING size(users) > 1;

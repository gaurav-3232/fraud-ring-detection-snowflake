-- 05_final_report.sql
-- Final fraud investigation report for analysts

CREATE OR REPLACE VIEW FRAUDGRAPH.PUBLIC.FINAL_FRAUD_REPORT AS
SELECT
    ua.RING_ID,
    RANK() OVER (ORDER BY AVG(ua.AVG_RISK) DESC) AS RING_RANK,
    ua.USER_ID,
    ua.COORDINATOR_RANK,
    ua.CONNECTION_COUNT,
    ua.AVG_RISK,
    ua.MAX_RISK,
    CASE
        WHEN ua.COORDINATOR_RANK = 1 THEN 'Ring Coordinator'
        WHEN ua.AVG_RISK >= 7 THEN 'High-risk participant'
        ELSE 'Supporting participant'
    END AS ROLE
FROM FRAUDGRAPH.PUBLIC.USER_ACTIVITY ua
ORDER BY RING_RANK, ua.RING_ID, ua.COORDINATOR_RANK;


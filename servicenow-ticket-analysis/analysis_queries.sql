-- Query: overall_incident_resolution_rate
-- Purpose: Measure overall resolution effectiveness for 2023 incidents

SELECT
  SUM(CASE WHEN resolved_status = 'R' THEN 1 ELSE 0 END) AS resolved_count,
  SUM(CASE WHEN resolved_status = 'UR' THEN 1 ELSE 0 END) AS unresolved_count,
  COUNT(*) AS total_incidents,
  ROUND(
    SUM(CASE WHEN resolved_status = 'R' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
    2
  ) AS resolved_pct,
  ROUND(
    SUM(CASE WHEN resolved_status = 'UR' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
    2
  ) AS unresolved_pct
FROM incidents;

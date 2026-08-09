-- ============================================================================
-- Enterprise Practice: Elsamag IT Solutions
-- Author & Lead Technical Consultant: Samuel Chinwendu Agu
-- Project: CloudShield Systems Threat Engine (sql-cyber-threat-audit-engine)
-- Objective: Detect rogue API keys exfiltrating > 50,000,000 bytes of data
-- ============================================================================

SELECT 
    api_key,
    SUM(bytes_transferred) AS total_bytes_exfiltrated
FROM 
    api_usage_logs
GROUP BY 
    api_key
HAVING 
    SUM(bytes_transferred) > 50000000;



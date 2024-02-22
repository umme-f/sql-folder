SELECT
  CONCAT(CAST((ROUND(rate / 5.0) * 5) AS INT), '-', CAST((ROUND(cpu_processor_rate / 5.0) * 5 + 5) AS INT)) AS [Range],
  COUNT(*) AS [TotalCount]
FROM
  your_table
GROUP BY
  ROUND(cpu_processor_rate / 5.0)
ORDER BY
  [Range];

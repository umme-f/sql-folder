SELECT
  CONCAT(CAST((FLOOR(cpu_processor_rate / 5) * 5) AS INT), '-' , CAST((FLOOR(cpu_processor_rate / 5) * 5 + 5) AS INT)) AS [Range],
  COUNT(*) AS [TotalCount]
FROM
  your_table
GROUP BY
  FLOOR(cpu_processor_rate / 5)
ORDER BY
  [Range];


SELECT country, COUNT(*) AS num_shows
FROM netflix_emea
GROUP BY country
ORDER BY num_shows DESC
LIMIT 10;

WITH high_budget AS (
  SELECT genres, revenue, budget, (revenue - budget) / budget AS roi
  FROM merged
  WHERE budget > 10000000
)
SELECT genres, AVG(roi) AS avg_roi
FROM high_budget
GROUP BY genres
ORDER BY avg_roi DESC;

SELECT country, COUNT(*) AS num_shows
FROM netflix_emea
GROUP BY country
ORDER BY num_shows DESC
LIMIT 10;
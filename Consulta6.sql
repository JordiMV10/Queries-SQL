SELECT 
    tailNum, SUM(distance) AS totalDistance
FROM
    flights
WHERE
    tailNum <> ''
GROUP BY tailnum
ORDER BY totalDistance DESC

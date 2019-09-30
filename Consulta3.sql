SELECT 
    origin, colyear, colmonth, AVG(ArrDelay) AS prom_arribades
FROM
    flights
GROUP BY origin , colmonth , colYear
ORDER BY origin , colyear , colmonth

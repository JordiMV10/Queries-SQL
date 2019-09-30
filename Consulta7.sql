SELECT 
    uniqueCarrier, AVG(ArrDelay) AS avgDelay
FROM
    flights
GROUP BY uniqueCarrier
HAVING avgDelay > 10
ORDER BY avgdelay DESC
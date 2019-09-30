-------EXERCICI 1 -------------------------
SELECT 
    COUNT(*)
FROM
    flights
    
-------EXERCICI 2 -------------------------
SELECT 
    origin,
    AVG(ArrDelay) AS prom_arribades,
    AVG(DepDelay) AS prom_sortides
FROM
    flights
GROUP BY Origin

-------EXERCICI 3 -------------------------
SELECT 
    origin, colyear, colmonth, AVG(ArrDelay) AS prom_arribades
FROM
    flights
GROUP BY origin , colmonth , colYear
ORDER BY origin , colyear , colmonth


--------EXERCICI 4 -------------------------
SELECT 
    city, colyear, colmonth, AVG(ArrDelay) AS prom_arribades
FROM
    flights
        INNER JOIN
    usairports ON flights.origin = usairports.iata
GROUP BY city , colmonth , colYear
ORDER BY city , colyear , colMonth


--------EXERCICI 5 -------------------------
SELECT 
    uniqueCarrier, colyear, colmonth, avg(ArrDelay) as avg_delay, sum(cancelled) as total_cancelled
FROM
    flights
WHERE
    cancelled = 1
group BY UniqueCarrier, colyear, colmonth
order by total_cancelled desc, colyear


--------EXERCICI 6 -------------------------
SELECT 
    tailNum, SUM(distance) AS totalDistance
FROM
    flights
WHERE
    tailNum <> ''
GROUP BY tailnum
ORDER BY totalDistance DESC


--------EXERCICI 7 -------------------------
SELECT 
    uniqueCarrier, AVG(ArrDelay) AS avgDelay
FROM
    flights
GROUP BY uniqueCarrier
HAVING avgDelay > 10
ORDER BY avgdelay DESC
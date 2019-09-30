SELECT 
    city, colyear, colmonth, AVG(ArrDelay) AS prom_arribades
FROM
    flights
        INNER JOIN
    usairports ON flights.origin = usairports.iata
GROUP BY city , colmonth , colYear
ORDER BY city , colyear , colMonth
SELECT 
    uniqueCarrier, colyear, colmonth, avg(ArrDelay) as avg_delay, sum(cancelled) as total_cancelled
FROM
    flights
WHERE
    cancelled = 1
group BY UniqueCarrier, colyear, colmonth
order by total_cancelled desc, colyear



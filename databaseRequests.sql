SELECT login, COUNT("inDelivery") 
FROM "Couriers" LEFT JOIN "Orders"
ON "Couriers".id = "Orders"."courierId"
WHERE "inDelivery" = true
GROUP BY "Couriers".id;


SELECT track,
       CASE WHEN finished = true THEN 2
            WHEN cancelled = true THEN -1
            WHEN "inDelivery" = true THEN 1
            ELSE 0
       END
FROM "Orders";
-- 595. Big Countries

SELECT name, population, area
FROM World
WHERE population >= 25000000 or area >= 3000000;
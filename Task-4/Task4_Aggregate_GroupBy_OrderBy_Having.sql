USE PlayStoreDB;

SELECT COUNT(*) FROM Apps;
SELECT AVG(Rating) FROM Apps;
SELECT MAX(Rating) FROM Apps;
SELECT MIN(Rating) FROM Apps;
SELECT SUM(Downloads) FROM Apps;
SELECT * FROM Apps ORDER BY Rating DESC;
 
 SELECT CategoryID,COUNT(*) 
 FROM Apps
 GROUP BY CategoryID;
 SELECT CategoryID, AVG(Rating)
 FROM Apps
 GROUP BY CategoryID;
 SELECT MAX(Price),
		MIN(Price) FROM Apps;
SELECT * FROM Apps ORDER BY Downloads DESC;
SELECT DeveloperID , COUNT(*)
FROM Apps
GROUP BY DeveloperID;
SELECT CategoryID, COUNT(*)
FROM Apps 
GROUP BY CategoryID
HAVING COUNT(*) > 1;


SELECT DeveloperID ,COUNT(*)
FROM Apps 
GROUP BY DeveloperID;
SELECT PublisherID , AVG(Rating)
FROM Apps 
GROUP BY PublisherID;
SELECT DeveloperID ,COUNT(*)
FROM Apps 
GROUP BY DeveloperID
HAVING COUNT(*) > 1;
SELECT CategoryID ,AVG(Rating)
FROM Apps
GROUP BY CategoryID
HAVING AVG(Rating)> 4.3;
SELECT CategoryId,COUNT(*)
FROM Apps 
GROUP BY CategoryID
ORDER BY COUNT(*) DESC;
SELECT MAX(Rating) FROM Apps;
SELECT DeveloperId,sum(Price)
FROM Apps
GROUP BY DeveloperID;
SELECT * FROM Apps
WHERE Rating = (
           SELECT MAX(Rating)
           FROM Apps
);

USE PlayStoreDB;
-- level 0
ALTER TABLE Apps 
ADD CONSTRAINT fk_developer
FOREIGN KEY (DeveloperID) 
REFERENCES Developers(DeveloperID);

ALTER TABLE Apps
ADD CONSTRAINT fk_publisher
FOREIGN KEY (PublisherID) 
REFERENCES Publishers(PublisherID);

ALTER TABLE Apps
ADD CONSTRAINT fk_category
FOREIGN KEY (CategoryID) 
REFERENCES Categories(CategoryID);

SELECT * FROM Apps WHERE Rating > 4.5;
SELECT * FROM Apps WHERE Price = 0;
SELECT * FROM Apps WHERE CategoryID = 30;

-- level 1
SELECT * FROM Apps WHERE Downloads > 500000000;
SELECT * FROM Apps WHERE Rating BETWEEN 4.5 AND 4.7;
SELECT * FROM Apps WHERE Price IN (0,299);
SELECT * FROM Apps WHERE AppName LIKE 'G%';
SELECT * FROM Apps WHERE AppName LIKE '%Google%';
SELECT * FROM Apps WHERE Rating > 4.0 AND Downloads > 500000000;
SELECT * FROM Apps WHERE CategoryID = 301 OR CategoryID = 305;

-- level 2
SELECT * FROM Apps WHERE AppName NOT LIKE 'G%';
SELECT * FROM Apps WHERE Rating < 4.5 OR Downloads > 1000000000;
SELECT * FROM Developers WHERE DeveloperName LIKE '%a%';
SELECT * FROM Apps WHERE Price BETWEEN 0 AND 300;
SELECT * FROM Apps WHERE PublisherID IN (201,204);
INSERT INTO Apps VALUES(2001,'Test App',999,201,301,4.5,1000,0);
SELECT * FROM Apps WHERE NOT CategoryID = 305;








CREATE DATABASE Playstore_DB;
USE Playstore_DB;

CREATE TABLE Developers (
	DeveloperID INT PRIMARY KEY,
    DeveloperName VARCHAR(60) NOT NULL,
    Country VARCHAR(50),
    FoundedYear INT
);

INSERT INTO Developers VALUES
(101,'Google LLC','USA',1998),
(102,'Meat Platforms','USA',2004),
(103,'Spotify AB','Sweden',2006),
(104,'Canva Pty Ltd','Australia',2012),
(105,'BYJU"S','india',2011);

SELECT * FROM Developers;

CREATE TABLE Publishers (
	PublisherID INT PRIMARY KEY,
    PublisherName VARCHAR(100) NOT NULL,
    HeadOffice VARCHAR(100),
    SupportEmail VARCHAR(100)
);

INSERT INTO Publishers VALUES
(201,'Google Play','California','suppoert@google.com'),
(202,'Samsungdevelopers Galaxy Store','Seoul','support@sasung.com'),
(203,'Huawel AppGallery','Shenzhen','support@huawei.com'),
(204,'Amazon AppStore','Seattle','support@amazon.com');

SELECT * FROM Publishers;

CREATE TABLE Categories (
	CategoryID INT PRIMARY KEY,
	CategoryName VARCHAR(60),
	MinimumAge INT
);

INSERT INTO Categories VALUES
(301,'Education',3),
(302,'Productivity',3),
(303,'Music',12),
(304,'Social',13),
(305,'Gaming',16);

SELECT * FROM Categories;

CREATE TABLE Apps (
	AppID INT PRIMARY KEY,
    AppName VARCHAR(100),
    DeveloperID INT,
    PublisherID INT,
    CategoryID INT,
    Rating DECIMAL(2,1),
    Downloads INT,
    Price DECIMAL(6,2)
);

INSERT INTO Apps VALUES
(1001,'Google Classsroom',101,201,301,4.6,500000000,0),
(1002,'Google Keep',101,201,302,4.5,1000000000,0),
(1003,'Instagram',102,201,304,4.4,500000000,0),
(1004,'Spotify',103,201,303,4.5,1000000000,0),
(1005,'Canva',104,201,302,4.7,500000000,0),
(1006,'BYJU"S Learning',105,201,301,4.3,100000000,299),
(1007,'Candy crush',102,204,305,4.6,1000000000,0),
(1008,'Temple Run',104,203,305,4.2,500000000,0);

SELECT * FROM Apps;
DESC Apps;
INSERT INTO Developers VALUES
(106,'OpenAI','USA',2025);
INSERT INTO Category VALUES
(306,'Artificial Intelligence',12);



pending...........
DELETE FROM Developers
WHERE DeveloperID = 105;

INSERT INTO Categories VALUES
(306,'Artificial Intelligence',12);

INSERT INTO Apps VALUES
(1009,'ChatGPT',106,201,306,4.8,100000000,0);

UPDATE Apps
SET Price = 199
WHERE AppID = 1006;

UPDATE Publishers
SET SupportEmail = 'support@samsungdevelopers.com'
WHERE PublisherID = 202;

INSERT INTO Apps VALUES
(1010,'Google Drive',106,201,306,4.7,500000000,0),
(1011,'Canva Design',101,201,302,4.6,100000,0);

UPDATE Apps
SET Rating = 4.5
WHERE AppID = 1008;

DELETE FROM Categories
WHERE CategoryID = 303;

SELECT * FROM Developers;
SELECT * FROM Publishers;
SELECT *FROM Categories;
SELECT * FROM Apps;
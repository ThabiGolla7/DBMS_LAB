USE Playstore_DB;
SELECT UPPER(DeveloperName) AS DeveloperName FROM Developers;
SELECT LOWER(DeveloperName) AS DeveloperName FROM Developers;
SELECT LENGTH(AppName) AS AppName_length FROM Apps;
SELECT CategoryName,LENGTH(CategoryName) AS Name_Length FROM Categories;
SELECT CURRENT_DATE() AS Current_Date,CURRENT_TIME() AS Current_Time;
SELECT AppName,ROUND(Rating,0) AS Rounded_Rating FROM Apps;

SELECT AppName, SUBSTRING(AppName,1,5) AS First_5_Charecters FROM Apps;
SELECT CONCAT(DeveloperName,'-',Country) AS Developer_Info FROM Developers;
SELECT AppName,ROUND(rating,1) AS Rounded_Rating FROM Apps;
SELECT AppName,Price,CEIL(Price) AS Ceil_Price FROM Apps;
SELECT DeveloperName,FoundedYear FROM Developers;
SELECT AppName,CAST(Downloads AS CHAR) AS Downloads_Text FROM Apps;

SELECT UPPER(AppName) AS App_Name,Rating FROM Apps;
SELECT CategoryName,SUBSTRING(CategoryName,1,3)AS First_3_Charecters FROM Cateogries;
SELECT AppName,ABS(Price-200)AS Difference_From_200 FROM Apps;
SELECT DeveloperName,LENGTH(DeveloperName)AS Name_Length FROM Developers;
SELECT CURRENT_DATE(),CURRENT_TIMESTAMP();
SELECT CAST(12345 AS CHAR)AS Converted_value;

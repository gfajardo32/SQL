/*  
    SQL Script: Create and Populate the 'nomnom' Table  
    Description: A dataset of New York restaurants used for SQL query practice.  
    Author: Guido Fajardo  
    Date: October 17, 2025  
*/

------------------------------------------------------------
-- 1. CREATE TABLE
------------------------------------------------------------

DROP TABLE IF EXISTS dbo.nomnom;
GO

CREATE TABLE nomnom (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    neighborhood NVARCHAR(50),
    cuisine NVARCHAR(50),
    review DECIMAL(2,1),
    price NVARCHAR(10),
    health NVARCHAR(5)
);

------------------------------------------------------------
-- 2. POPULATE TABLE WITH DATA
------------------------------------------------------------

INSERT INTO nomnom (name, neighborhood, cuisine, review, price, health)
VALUES
('Baohaus', 'Downtown', 'Chinese', 4.2, '$', 'A'),
('Bunna Cafe', 'Brooklyn', 'Ethiopian', 4.6, '$$', 'A'),
('Buddha Bodai', 'Chinatown', 'Vegetarian', 4.2, '$$', 'A'),
('Carbone', 'Downtown', 'Italian', 4.3, '$$$', 'A'),
('Dan and John''s Wings', 'Downtown', 'American', 4.5, '$', 'A'),
('Di Fara Pizza', 'Brooklyn', 'Pizza', 4.2, '$$', 'A'),
('Dirt Candy', 'Downtown', 'Vegetarian', 4.4, '$$$', 'A'),
('Enid''s', 'Brooklyn', 'Soul Food', 4.0, '$$', 'A'),
('Foodcademy', 'Midtown', 'American', 4.4, '$$', 'A'),
('Great NY Noodletown', 'Chinatown', 'Chinese', 4.1, '$$', 'B'),
('I Sodi', 'Downtown', 'Italian', 4.5, '$$$', 'A'),
('Ippudo', 'Downtown', 'Japanese', 4.4, '$$', 'A'),
('Jacob''s Pickles', 'Uptown', 'American', NULL, '$$', NULL),
('Jajaja', 'Downtown', 'Vegetarian', 4.5, '$$', 'A'),
('Jongro BBQ', 'Midtown', 'Korean', 4.5, '$$', 'A'),
('Kang Ho Dong Baekjeong', 'Midtown', 'Korean', 4.3, '$$$', 'C'),
('Kenka', 'Downtown', 'Japanese', 4.3, '$', 'B'),
('Lilia', 'Brooklyn', 'Italian', 4.4, '$$$', 'A'),
('Lighthouse', 'Brooklyn', 'American', 4.6, '$$', NULL),
('Locanda Vini & Olii', 'Brooklyn', 'Italian', 4.4, '$$$', 'A'),
('Los Hermanos', 'Brooklyn', 'Mexican', 4.4, '$', NULL),
('Marea', 'Midtown', 'Italian', 4.5, '$$$$', 'A'),
('Massawa', 'Uptown', 'Ethiopian', 4.0, '$$', NULL),
('Minca', 'Downtown', 'Japanese', 4.4, '$$', 'A'),
('Nan Xiang Xiao Long Bao', 'Queens', 'Chinese', 4.2, '$', 'A'),
('N.E.D', 'Uptown', 'American', 4.2, '$$$', 'A'),
('Nom Wah Tea Parlor', 'Chinatown', 'Chinese', 4.2, '$', 'A'),
('Ootoya', 'Downtown', 'Japanese', 4.5, '$$', 'A'),
('Peter Luger Steak House', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A'),
('Ping''s Seafood', 'Chinatown', 'Chinese', 4.2, '$$', 'A'),
('Pocha 32', 'Midtown', 'Korean', 4.0, '$$', 'A'),
('Rao''s', 'Uptown', 'Italian', 4.2, '$$$', 'A'),
('Roberta''s', 'Brooklyn', 'Pizza', 4.4, '$$', 'A'),
('Roti Roll Bombay Frankie', 'Uptown', 'Indian', 4.2, '$', 'A'),
('Russ & Daughters', 'Downtown', 'American', 4.6, '$$', 'A'),
('Scorpio Sisters', 'Downtown', 'American', 4.2, '$$', 'A'),
('Shake Shack', 'Midtown', 'American', 4.4, '$', 'A'),
('Smalls Jazz Club', 'Downtown', 'American', NULL, '$$', 'A'),
('Sonnyboy''s', 'Brooklyn', 'Chinese', 4.2, '$$', 'A'),
('Speedy Romeo', 'Brooklyn', 'Pizza', 4.4, '$$', 'A'),
('St. Anselm', 'Brooklyn', 'Steak', 4.5, '$$', 'A'),
('The Cole Romano Experience', 'Brooklyn', 'Italian', 2.1, '$$$$$', 'C'),
('The Halal Guys', 'Midtown', 'Mediterranean', 4.4, '$', 'A'),
('The Meatball Shop', 'Downtown', 'American', 4.2, '$', 'A'),
('The Standard Biergarten', 'Downtown', 'American', 4.0, '$$', 'A'),
('Timbo Slice', 'Brooklyn', 'Pizza', 2.8, '$', 'B'),
('Wo Hop', 'Chinatown', 'Chinese', 4.2, '$$', NULL),
('Xi''an Famous Foods', 'Midtown', 'Chinese', 4.4, '$', 'A'),
('XO Kitchen', 'Chinatown', 'Chinese', 4.0, '$', 'B'),
('Yakitori Taisho', 'Downtown', 'Japanese', 4.1, '$', 'B');

------------------------------------------------------------
-- 3. PRACTICE QUERIES
------------------------------------------------------------

-- 1. Retrieve all records
SELECT *
FROM nomnom;

-- 2. Retrieve distinct neighborhoods
SELECT DISTINCT neighborhood
FROM nomnom;

-- 3. Retrieve distinct cuisines
SELECT DISTINCT cuisine
FROM nomnom;

-- 4. Retrieve all Chinese cuisine restaurants
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';

-- 5. Retrieve all restaurants with a review rating of 4 or higher
SELECT *
FROM nomnom
WHERE review >= 4;

-- 6. Retrieve all Italian restaurants with a price rating of $$$
SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
  AND price = '$$$';

-- 7. Retrieve all restaurants with 'meatball' in their name
SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';

-- 8. Retrieve all restaurants located in Midtown, Downtown, or Chinatown
SELECT *
FROM nomnom
WHERE neighborhood IN ('Midtown', 'Downtown', 'Chinatown');

-- 9. Retrieve all restaurants that do not have a health rating
SELECT *
FROM nomnom
WHERE health IS NULL;

-- 10. Retrieve the top 10 highest-rated restaurants
SELECT TOP 10 *
FROM nomnom
ORDER BY review DESC;

-- 11. Categorize restaurants based on their review ratings
SELECT *,
       CASE
           WHEN review > 4.5 THEN 'Extraordinary'
           WHEN review > 4   THEN 'Excellent'
           WHEN review > 3   THEN 'Good'
           WHEN review > 2   THEN 'Fair'
           ELSE 'Poor'
       END AS Reality
FROM nomnom;
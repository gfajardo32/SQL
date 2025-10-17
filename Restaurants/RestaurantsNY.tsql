/*  
    SQL Script: Create and Populate the 'nomnom' Table  
    Description: A dataset of New York restaurants used for SQL query practice.  
    Author: Guido Fajardo  
    Date: October 17, 2025  
*/

------------------------------------------------------------
-- 1. CREATE TABLE
------------------------------------------------------------

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

INSERT INTO nomnom (id, name, neighborhood, cuisine, review, price, health)
VALUES
(1, 'Baohaus', 'Downtown', 'Chinese', 4.2, '$', 'A'),
(2, 'Bunna Cafe', 'Brooklyn', 'Ethiopian', 4.6, '$$', 'A'),
(3, 'Buddha Bodai', 'Chinatown', 'Vegetarian', 4.2, '$$', 'A'),
(4, 'Carbone', 'Downtown', 'Italian', 4.3, '$$$', 'A'),
(5, 'Dan and John''s Wings', 'Downtown', 'American', 4.5, '$', 'A'),
(6, 'Di Fara Pizza', 'Brooklyn', 'Pizza', 4.2, '$$', 'A'),
(7, 'Dirt Candy', 'Downtown', 'Vegetarian', 4.4, '$$$', 'A'),
(8, 'Enid''s', 'Brooklyn', 'Soul Food', 4.0, '$$', 'A'),
(9, 'Foodcademy', 'Midtown', 'American', 4.4, '$$', 'A'),
(10, 'Great NY Noodletown', 'Chinatown', 'Chinese', 4.1, '$$', 'B'),
(11, 'I Sodi', 'Downtown', 'Italian', 4.5, '$$$', 'A'),
(12, 'Ippudo', 'Downtown', 'Japanese', 4.4, '$$', 'A'),
(13, 'Jacob''s Pickles', 'Uptown', 'American', NULL, '$$', NULL),
(14, 'Jajaja', 'Downtown', 'Vegetarian', 4.5, '$$', 'A'),
(15, 'Jongro BBQ', 'Midtown', 'Korean', 4.5, '$$', 'A'),
(16, 'Kang Ho Dong Baekjeong', 'Midtown', 'Korean', 4.3, '$$$', 'C'),
(17, 'Kenka', 'Downtown', 'Japanese', 4.3, '$', 'B'),
(18, 'Lilia', 'Brooklyn', 'Italian', 4.4, '$$$', 'A'),
(19, 'Lighthouse', 'Brooklyn', 'American', 4.6, '$$', NULL),
(20, 'Locanda Vini & Olii', 'Brooklyn', 'Italian', 4.4, '$$$', 'A'),
(21, 'Los Hermanos', 'Brooklyn', 'Mexican', 4.4, '$', NULL),
(22, 'Marea', 'Midtown', 'Italian', 4.5, '$$$$', 'A'),
(23, 'Massawa', 'Uptown', 'Ethiopian', 4.0, '$$', NULL),
(24, 'Minca', 'Downtown', 'Japanese', 4.4, '$$', 'A'),
(25, 'Nan Xiang Xiao Long Bao', 'Queens', 'Chinese', 4.2, '$', 'A'),
(26, 'N.E.D', 'Uptown', 'American', 4.2, '$$$', 'A'),
(27, 'Nom Wah Tea Parlor', 'Chinatown', 'Chinese', 4.2, '$', 'A'),
(28, 'Ootoya', 'Downtown', 'Japanese', 4.5, '$$', 'A'),
(29, 'Peter Luger Steak House', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A'),
(30, 'Ping''s Seafood', 'Chinatown', 'Chinese', 4.2, '$$', 'A'),
(31, 'Pocha 32', 'Midtown', 'Korean', 4.0, '$$', 'A'),
(32, 'Rao''s', 'Uptown', 'Italian', 4.2, '$$$', 'A'),
(33, 'Roberta''s', 'Brooklyn', 'Pizza', 4.4, '$$', 'A'),
(34, 'Roti Roll Bombay Frankie', 'Uptown', 'Indian', 4.2, '$', 'A'),
(35, 'Russ & Daughters', 'Downtown', 'American', 4.6, '$$', 'A'),
(36, 'Scorpio Sisters', 'Downtown', 'American', 4.2, '$$', 'A'),
(37, 'Shake Shack', 'Midtown', 'American', 4.4, '$', 'A'),
(38, 'Smalls Jazz Club', 'Downtown', 'American', NULL, '$$', 'A'),
(39, 'Sonnyboy''s', 'Brooklyn', 'Chinese', 4.2, '$$', 'A'),
(40, 'Speedy Romeo', 'Brooklyn', 'Pizza', 4.4, '$$', 'A'),
(41, 'St. Anselm', 'Brooklyn', 'Steak', 4.5, '$$', 'A'),
(42, 'The Cole Romano Experience', 'Brooklyn', 'Italian', 2.1, '$$$$$', 'C'),
(43, 'The Halal Guys', 'Midtown', 'Mediterranean', 4.4, '$', 'A'),
(44, 'The Meatball Shop', 'Downtown', 'American', 4.2, '$', 'A'),
(45, 'The Standard Biergarten', 'Downtown', 'American', 4.0, '$$', 'A'),
(46, 'Timbo Slice', 'Brooklyn', 'Pizza', 2.8, '$', 'B'),
(47, 'Wo Hop', 'Chinatown', 'Chinese', 4.2, '$$', NULL),
(48, 'Xi''an Famous Foods', 'Midtown', 'Chinese', 4.4, '$', 'A'),
(49, 'XO Kitchen', 'Chinatown', 'Chinese', 4.0, '$', 'B'),
(50, 'Yakitori Taisho', 'Downtown', 'Japanese', 4.1, '$', 'B');

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
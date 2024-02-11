-- Top Earned Movie
SELECT Series_Title, Certificate, IMDB_Rating, Gross FROM imdb_data.data
ORDER BY Gross DESC
LIMIT 1;

-- Top Rated Movie
SELECT * FROM imdb_data.data
ORDER BY IMDB_Rating DESC
LIMIT 3;

-- Popular Genre
SELECT Genre, COUNT(*) as Count_Genre FROM imdb_data.data
GROUP BY Genre 
ORDER BY Count_Genre DESC;

-- Highest Average IMDB_Rating
SELECT Genre, avg(IMDB_Rating) as Avg_Rating FROM imdb_data.data
GROUP BY Genre
ORDER BY Avg_Rating DESC
LIMIT 5

-- Number of Movies Released in Each Year
SELECT Released_Year, COUNT(*) AS Number_Movies FROM imdb_data.data
GROUP BY Released_Year
ORDER BY Number_Movies DESC
LIMIT 5;

-- Trend in IMDB Rating Over the Year
SELECT Released_Year, AVG(IMDB_Rating) AS Avg_Rating
FROM imdb_data.data
GROUP BY Released_Year
ORDER BY Released_Year;

-- Top Rated Director by Average of IMDB Rating
SELECT Director, avg(IMDB_Rating) as Avg_IMDBRating FROM imdb_data.data
GROUP BY Director
ORDER BY Avg_IMDBRating DESC

-- Director with Most Movies
SELECT Director,  COUNT(*) as Count_Movies FROM imdb_data.data
GROUP BY DIRECTOR
ORDER BY Count_Movies DESC
LIMIT 1

-- Calculate average rating and gross income for each rating category
SELECT ROUND(IMDB_Rating, 1) AS Rating, COUNT(*) AS Num_Movies, AVG(Gross) AS Avg_Gross_Income FROM imdb_data.data
GROUP BY ROUND(IMDB_Rating, 1)
ORDER BY ROUND(IMDB_Rating, 1) DESC;

-- Correlation analysis between IMDb ratings and gross income
SELECT CORR(Meta_score, Gross) AS Correlation FROM imdb_data.data

-- Runtime Summary
SELECT MIN(Runtime) as Min_Runtime 
		MAX(Runtime) as Max_Runtime
        AVG(Runtime) as Average_Runtime
FROM imdb_data.data

SELECT MIN(Runtime) as Min_Runtime FROM imdb_data.data
SELECT MAX(Runtime) as Max_Runtime FROM imdb_data.data
SELECT AVG(Runtime) as Avg_Runtime FROM imdb_data.data

-- Freuency Disctibution
SELECT Runtime, COUNT(*) AS Frequency
FROM imdb_data.data
GROUP BY Runtime
ORDER BY Runtime;

-- Certificate Impact Rating on Gross Income
SELECT Certificate, AVG(IMDB_Rating) AS Avg_IMDB_Rating, AVG(Gross) AS Avg_Gross_Income
FROM imdb_data.data
GROUP BY Certificate;

-- Metascore Impact on Gross Income
SELECT Meta_Score, AVG(Meta_score) as AVG_MetaScore, AVG(Gross) as AVG_Gross FROM imdb_data.data
GROUP BY Meta_score
ORDER BY AVG_Gross DESC

-- Average Runtime on Different Genre
SELECT Genre, AVG(Runtime) AS Average_Runtime FROM imdb_data.data
GROUP BY Genre
ORDER BY Average_Runtime DESC;

-- Movie with Max Votes
SELECT Series_Title, MAX(No_of_Votes) as MAX_Votes from imdb_data.data
GROUP BY Series_Title
ORDER BY MAX_Votes DESC
LIMIT 3












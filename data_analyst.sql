-- 1.	How many rows are in the data_analyst_jobs table?

-- SELECT COUNT (*)
-- FROM data_analyst_jobs;

--Answer: 1793

-- 2.	Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row? XTO LAND ANALYST

-- SELECT *  
-- FROM data_analyst_jobs
-- LIMIT 10; 


-- 3.	How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?

-- SELECT *
-- FROM data_analyst_jobs
-- WHERE location IN ('KY','TN')


-- 4.	How many postings in Tennessee have a star rating above 4?

-- SELECT *
-- FROM data_analyst_jobs
-- WHERE review_count > 4 and location IN ('TN');


-- 5.	How many postings in the dataset have a review count between 500 and 1000?

-- SELECT *
-- FROM data_analyst_jobs
-- WHERE review_count BETWEEN 500 and 1000



-- 6.	Show the average star rating for companies in each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating?NE

-- SELECT location AS state,
-- AVG(star_rating) AS avg_rating
-- FROM data_analyst_jobs
-- GROUP BY location
-- ORDER BY AVG(star_rating) DESC;


-- 7.	Select unique job titles from the data_analyst_jobs table. How many are there? 881

-- SELECT COUNT(DISTINCT title)
-- FROM data_analyst_jobs;



-- 8.	How many unique job titles are there for California companies? 230

-- SELECT COUNT(DISTINCT title)
-- FROM data_analyst_jobs
-- WHERE location = 'CA'


-- 9.	Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?

-- SELECT company, AVG(star_rating)
-- FROM data_analyst_jobs
-- WHERE review_count >5000
-- GROUP BY company;
	
	
	
	
-- -- 10.	Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?


-- SELECT DISTINCT company 
-- FROM data_analyst_jobs
-- WHERE review_count >5000 and company IS NOT NULL;



-- 11.	Find all the job titles that contain the word ‘Analyst’. How many different job titles are there? 698

-- SELECT COUNT(DISTINCT title)
-- FROM data_analyst_jobs
-- WHERE title NOT Ilike '%Analytics%';








-- 12.	How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?
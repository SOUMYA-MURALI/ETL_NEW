-- Create table " etl_economic_freedom "  to load the final data  " final_data_to_load "

CREATE TABLE public.etl_economic_freedom
(country VARCHAR(50) NOT NULL UNIQUE,
region VARCHAR(50)NOT NULL,
world_rank FLOAT NOT NULL UNIQUE,
economic_freedom_score FLOAT NOT NULL,
population_in_millions FLOAT NOT NULL,
unemployment_in_percent FLOAT NOT NULL,
tourist_count_2017 FLOAT NOT NULL,
income_group VARCHAR(50) NOT NULL,
PRIMARY KEY (country)
 );
 
 
-- Select query to view the full data
SELECT * FROM public.etl_economic_freedom; 

-- Select query to view the details of the countries which have higher economic freedom score
SELECT * FROM public.etl_economic_freedom WHERE economic_freedom_score > 70;

-- Select query to view the details of the countries which have lower economic freedom score
SELECT * FROM public.etl_economic_freedom WHERE economic_freedom_score < 50;

-- Select query to view how many countries in Eurpoe have economic_freedom_score greater than 70
SELECT count(country) FROM public.etl_economic_freedom WHERE region = 'Europe' and economic_freedom_score >70;

-- Select query to view top five countries with region 
SELECT country,region FROM public.etl_economic_freedom WHERE world_rank < 6;



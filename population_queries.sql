-- How many entries in the database are from Africa?
SELECT COUNT(*) FROM countries WHERE continent IS 'Africa';
--56

-- What was the total population of Oceania in 2005?
SELECT (SUM(population)*1000000) FROM population_years JOIN countries ON population_years.country_id = countries.id WHERE countries.continent IS 'Oceania';  
--359,478,080

-- What is the average population of countries in South America in 2003?
SELECT ROUND(AVG(population), 2) FROM population_years JOIN countries ON population_years.country_id = countries.id WHERE continent IS 'South America' AND year = '2003';
--25.89

-- What country had the smallest population in 2007?
SELECT name, continent, population FROM population_years JOIN countries ON population_years.country_id = countries.id WHERE year = '2007' AND population IS NOT NULL ORDER BY population ASC LIMIT 1;
--Niue, Oceania, 0.00216

-- What is the average population of Poland during the time period covered by this dataset?
SELECT MIN(year), MAX(year) FROM population_years;
--2000, 2010
SELECT ROUND((AVG(population)*1000000), 2) FROM population_years JOIN countries ON population_years.country_id = countries.id WHERE name = 'Poland';
--38,560,679.09

-- How many countries have the word "The" in their name?
SELECT COUNT(*) FROM countries WHERE name LIKE '%The%';
--4

-- What was the total population of each continent in 2010?
SELECT ROUND((1000000*SUM(population)), 2) FROM population_years WHERE year = '2010';
--6,842,964,250

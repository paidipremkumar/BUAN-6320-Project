
## Validation Queries

SELECT COUNT(DISTINCT state) AS "No of States" FROM DBProject.state_lockdown_details;

-- No of states in USA are 51

SELECT COUNT(DISTINCT county) AS "No of Counties" FROM DBProject.county_details;
-- 1868

SELECT count(*) FROM Station_details;
-- 1667

SELECT SUM(cases) AS "Sum of Cases" FROM DBProject.fips_daily_cases;
-- 6182614

SELECT AVG(sea_level_pressure) As "Mean sea level pressure" FROM daily_weather_details;
-- '1015.030408'

SELECT SUM(num_deaths) AS "Total Deaths" FROM county_socio_health;
-- '3809338'

## Validating by Joining the tables

SELECT SUM(deaths) AS "Total no of Deaths", 
SUM(cases) AS "Total No of Count"  FROM DBProject.fips_daily_cases
JOIN DBProject.daily_weather_details
ON DBProject.daily_weather_details.fips = DBProject.fips_daily_cases.fips
WHERE deaths>0;

-- Total affected people are '5158834499' and  '295887619' people died.


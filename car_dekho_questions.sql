create database cars;
use cars;

-- Read data
select * from car_dekho;

-- Total cars: To get a count of total records
select count(*) from car_dekho;

-- The manager asked the employee, how many
-- cars will be available in 2023

select count(*) as car_2023 from car_dekho 
where year = 2023;

-- How many cars is available in 2020,2021,2022 ?
select count(*) from car_dekho
where year IN(2020,2021,2022);
-- or
select year, count(*) from car_dekho
where year IN(2020,2021,2022)
group by year;

-- client asked me to print total of all cars
-- by year
select year, count(*) as 'No. of cars' from car_dekho
group by year;

-- How many diesel cars are there will there be in  2020 ?
select * from car_dekho;
select count(*) from car_dekho
where fuel = 'Diesel' and year = 2020;

-- How many petrol cars will there be in 2020
select count(*) from car_dekho
where fuel = 'petrol' and year = 2020; # 51

-- print all the fuel cars (petrol, diesel,cng) come by all year

select year,fuel, count(*) from car_dekho
where fuel in('petrol', 'diesel','cng')
group by year,fuel;

-- Manager said there were more than 100 cars in a
-- given year,which year had more than 100 cars
select * from car_dekho;
select year, count(*) from car_dekho
group by year having count(*)>=100;

-- All cars count details between 2015 and 2023
select count(*) from car_dekho
where year between 2015 and 2023; # 4124





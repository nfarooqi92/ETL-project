CREATE TABLE vaccinations (
  date date,
  location TEXT NOT NULL,
  daily_vaccinations int, 
	PRIMARY KEY (date, location)
);

CREATE TABLE cases (
  date date,
  state TEXT NOT NULL,
  cases int, 
	PRIMARY KEY (date, state)
);

SELECT * 
FROM vaccinations
INNER JOIN cases
ON vaccinations.date = cases.date AND vaccinations.location = cases.state

-- Joins tables
SELECT vaccinations.date, vaccinations.daily_vaccinations, cases.cases
FROM vaccinations
JOIN cases
ON vaccinations.date = cases.date;
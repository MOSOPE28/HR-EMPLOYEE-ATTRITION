COPY "HR"
FROM 'C:\Program Files\PostgreSQL\16\data\COPY DATA\HR DATASET.csv'CSV HEADER
select *
from "HR"

----What is the average age of employees in each department?
SELECT "Department", AVG("Age") AS AverageAge
FROM "HR"
GROUP BY "Department";

-----What is the attrition rate by department?
SELECT "Department", SUM(CASE WHEN "Attrition" = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS AttritionRate
FROM "HR"
GROUP BY "Department";

-----Which job role has the highest job satisfaction?
SELECT "JobRole", AVG("JobSatisfaction") AS AverageJobSatisfaction
FROM "HR"
GROUP BY "JobRole"
ORDER BY AverageJobSatisfaction DESC
LIMIT 1;

-----How does business travel frequency affect attrition?
SELECT "BusinessTravel", SUM(CASE WHEN "Attrition" = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS AttritionRate
FROM "HR"
GROUP BY "BusinessTravel";

----What is the distribution of employees by education field?
SELECT "EducationField", COUNT(*) AS EmployeeCount
FROM "HR"
GROUP BY "EducationField"
ORDER BY EmployeeCount DESC;

-----Which department has the highest average monthly income
SELECT "Department", AVG("MonthlyIncome") AS AverageMonthlyIncome
FROM "HR"
GROUP BY "Department"
ORDER BY AverageMonthlyIncome DESC
LIMIT 1;

-----Is there a correlation between job level and total working years
SELECT "JobLevel", AVG("TotalWorkingYears") AS AverageWorkingYears
FROM "HR"
GROUP BY "JobLevel"
ORDER BY AverageWorkingYears DESC

----Wha't is the average distance from home for employees who travel frequently?
SELECT "BusinessTravel", AVG("DistanceFromHome") AS AverageDistance
FROM "HR"
GROUP BY "BusinessTravel";

-----Which marital status group has the highest attrition rate
SELECT "MaritalStatus", SUM(CASE WHEN "Attrition" = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS AttritionRate
FROM "HR"
GROUP BY "MaritalStatus";

----What is the average monthly income for each job role
SELECT "JobRole", AVG("MonthlyIncome") AS AverageMonthlyIncome
FROM "HR"
GROUP BY "JobRole"
ORDER BY AverageMonthlyIncome DESC

----How does gender distribution vary across departments?
SELECT "Department", "Gender", COUNT(*) AS EmployeeCount
FROM "HR"
GROUP BY "Department", "Gender"
ORDER BY EmployeeCount DESC

------What is the average performance rating for employees in each job role?
SELECT "JobRole", AVG("PerformanceRating") AS AveragePerformanceRating
FROM "HR"
GROUP BY "JobRole";

-----How many employees work in each job level?
SELECT "JobLevel", COUNT(*) AS EmployeeCount
FROM "HR"
GROUP BY "JobLevel"
ORDER BY EmployeeCount DESC

-----Which education level has the highest attrition rate?
SELECT "Education", SUM(CASE WHEN "Attrition" = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS AttritionRate
FROM "HR"
GROUP BY "Education";

-----What is the average hourly rate by job role?
SELECT "JobRole",AVG("HourlyRate") AS AverageHourlyRate
FROM "HR"
GROUP BY "JobRole";

-----How does overtime status affect attrition rate?
SELECT "OverTime", SUM(CASE WHEN "Attrition" = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS AttritionRate
FROM "HR"
GROUP BY "OverTime";

-----Which department has the most employees working overtime
SELECT "Department", COUNT(*) AS OvertimeCount
FROM "HR"
WHERE "OverTime" = 'Yes'
GROUP BY "Department"
ORDER BY OvertimeCount DESC;

-----What is the average number of years at the company by job role
SELECT "JobRole", AVG("YearsAtCompany") AS AverageYearsAtCompany
FROM "HR"
GROUP BY "JobRole"
ORDER BY AverageYearsAtCompany DESC;

-----Which job role has the highest percentage salary hike?
SELECT "JobRole", AVG(PercentSalaryHike) AS AverageSalaryHike
FROM "HR"
GROUP BY "JobRole"
ORDER BY AverageSalaryHike DESC;

-----What is the average number of companies worked for by education field
SELECT "EducationField", AVG(NumCompaniesWorked) AS AverageCompaniesWorked
FROM "HR"
GROUP BY "EducationField";

-----Which department has the highest average job involvement?
SELECT "Department", AVG(JobInvolvement) AS AverageJobInvolvement
FROM "HR"
GROUP BY "Department"
ORDER BY AverageJobInvolvement DESC;

-----How does job satisfaction vary with years since last promotion?
SELECT YearsSinceLastPromotion, AVG(JobSatisfaction) AS AverageJobSatisfaction
FROM HR
GROUP BY YearsSinceLastPromotion
ORDER BY YearsSinceLastPromotion;

----What is the distribution of employees based on their environment satisfaction levels?
SELECT "EnvironmentSatisfaction", COUNT(*) AS EmployeeCount
FROM "HR"
GROUP BY "EnvironmentSatisfaction";

----Which job role has the longest average years in the current role?
SELECT "JobRole", AVG("YearsInCurrentRole") AS AverageYearsInCurrentRole
FROM "HR"
GROUP BY "JobRole"
ORDER BY AverageYearsInCurrentRole DESC;

----How many employees have never been promoted?
SELECT "YearsSinceLastPromotion" COUNT(*) AS NeverPromotedCount
FROM "HR"
WHERE "YearsSinceLastPromotion" = 0;

-----What is the average daily rate for each department?
SELECT "Department", AVG("DailyRate") AS AverageDailyRate
FROM "HR"
GROUP BY "Department";

-----How does the average monthly rate vary across different business travel frequencies?
SELECT "BusinessTravel", AVG("MonthlyRate") AS AverageMonthlyRate
FROM "HR"
GROUP BY "BusinessTravel";

-----What is the gender distribution in the sales department?
SELECT "Gender", COUNT(*) AS EmployeeCount
FROM "HR"
WHERE "Department" = 'Sales'
GROUP BY "Gender";

----Which education field has the highest average monthly income?
SELECT "EducationField", AVG("MonthlyIncome") AS AverageMonthlyIncome
FROM "HR"
GROUP BY "EducationField"
ORDER BY AverageMonthlyIncome DESC;


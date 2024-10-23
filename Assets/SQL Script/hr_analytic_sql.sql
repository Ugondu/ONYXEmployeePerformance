/*
Steps in structuring our data for analysis
1. Create a database
2. Import file from csv or excel
3. Create duplicate table for manipulation
*/

-- 1. CREATING DATABASE 

-- DROP DATABASE IF EXISTS employee_performance_db;
-- CREATE DATABASE employee_performance_db;
-- USE employee_performance_db;

SELECT *
FROM dbo.hr_analytics_dataset;

-- Create duplicate data set to maintain the integrity of the original data

SELECT *
	INTO hr_analytics_dataset_duplicate
	FROM hr_analytics_dataset;

-- Validate if the duplicate was created
 SELECT *
 FROM hr_analytics_dataset_duplicate;

 /*
 
DATA DICTIONARY
1. Overtime_Hours: Total overtime hours worked in the last year.
2. Sick_Days: Number of sick days taken by the employee.
3. Remote_Work_Frequency: Percentage of time worked remotely (0%, 25%, 50%, 75%, 100%).
4. Team_Size: Number of people in the employee's team.
5. Training_Hours: Number of hours spent in training.
6. Promotions: Number of promotions received during their tenure.
7. Employee_Satisfaction_Score: Employee satisfaction rating (1.0 to 5.0 scale).
8. Resigned: Boolean value indicating if the employee has resigned.

    Standardisation of the data set
	1. Remove categories not relevant or classified properly

 */
-- Delete the other category in Gender column
DELETE 
FROM hr_analytics_dataset
WHERE Gender = 'Other';

-- Round the employee satisfaction rating to 2 decimal places
UPDATE hr_analytics_dataset
SET Employee_Satisfaction_Score = Round(Employee_Satisfaction_Score,2);

-- Use case statement to generate new features

-- Create a column called 'Age_Group'

ALTER TABLE hr_analytics_dataset
ADD Age_Group VARCHAR(30);

-- Update the new column using case statement
UPDATE hr_analytics_dataset
SET Age_Group = CASE
					WHEN Age BETWEEN 22 AND 41 THEN 'Young Employee (22-41Y)'
					ELSE 'Senior (>41Y)'
				END;

-- Update Resigned column with Yes or No.

ALTER TABLE hr_analytics_dataset
ADD Resignation VARCHAR(5);

UPDATE hr_analytics_dataset
SET Resignation = CASE
					WHEN Resigned = 0 THEN 'No'
					ELSE 'Yes'
				END;

ALTER TABLE hr_analytics_dataset
DROP COLUMN Income_Level;

ALTER TABLE hr_analytics_dataset
ADD Monthly_Salary_Level VARCHAR(50);


UPDATE hr_analytics_dataset
SET Monthly_Salary_Level 
				= CASE
					  WHEN Monthly_Salary BETWEEN 3850 AND 5566 THEN 'Low Income Earner(3850-5566)'
					  WHEN Monthly_Salary BETWEEN 5567 AND 7282 THEN 'Middle Income Earner(5567-7282)'
					  ELSE 'High Income Earner (>7283)'
				   END;

-- DROP COLUMNS NOT RELEVANT
ALTER TABLE hr_analytics_dataset
DROP COLUMN
		Age, Resigned;

-- Confirm that the columns are dropped
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'hr_analytics_dataset';
		
SELECT *
FROM hr_analytics_dataset
;

-- CREATE VIEWS FOR POWER BI VISUALISATION

CREATE VIEW hr_analytics_view AS
SELECT
[Employee_ID],
      [Department]
      ,[Gender]
      ,[Job_Title]
      ,[Hire_Date]
      ,[Years_At_Company]
      ,[Education_Level]
      ,[Performance_Score]
      ,[Monthly_Salary]
      ,[Work_Hours_Per_Week]
      ,[Projects_Handled]
      ,[Overtime_Hours]
      ,[Sick_Days]
      ,[Remote_Work_Frequency]
      ,[Team_Size]
      ,[Training_Hours]
      ,[Promotions]
      ,[Employee_Satisfaction_Score]
      ,[Age_Group]
      ,[Resignation]
      ,[Monthly_Salary_Level]
FROM [dbo].[hr_analytics_dataset];

SELECT TOP (100) *
FROM hr_analytics_view;





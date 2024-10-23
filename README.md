# Employee Performance and Productivity


![image](https://github.com/user-attachments/assets/7b4e588d-330d-4981-be0a-2b0ac9564207)



# Table of Contents

- [Objective](#objective)
- [Data Source](#data-source)
- [Stages](#stages)
- [Design](#design)
  - [Tools](#tools)
- [Development](#development)
  - [Pseudocode](#pseudocode)
  - [Data Cleaning](#data-cleaning)
  - [Data Transformation](#data-transformation)
- [Visualization](#visualization)
  - [Results](#results)
- [Analysis](#analysis)
  - [Insights](#insights)
- [Recommendations](#recommendations)


# Objective

- What is the pain point?

The head of analytics needs a detailed report on the employee performance and productivity at ONYX data company.

- What is the ideal solution?

This will involve an interactive dashboard that provides trends, patterns, and insights into;

- The relationship between salary and employee performance score
- The relationship between the length of stay and employee performance score
- How sick days affects the performamce score
- The correlation between weekly work hours and employee performance score


# Data Source

Our data is from ONYX DNA CHALLENGE DATASET FOR OCTOBER, can be [found here](https://github.com/Ugondu/ONYXEmployeePerformance/blob/main/Assets/Datasets/Employee%20Performance%20Onyx.xlsx)


# Stages

- Design
- Development
- Visualization
- Analysis



# Design

## Dashboard Components Required

- The dashboard will contain Key Performances Indicators
- The visualisations ( Stacked bars, line graphs, Line and Clustered Column charts
- Filters for interactivity

## Tools

| Tool | Purpose |
| --- | --- |
| Excel | Exploring the data |
| SQL Server | Cleaning, testing, and analyzing the data |
| Power BI | Visualizing the data via interactive dashboards |
| GitHub | Hosting the project documentation and version control |


# Development

## Pseudocode

- What is the best approach to create the solution from start to finish?

1. Get the data
2. Explore the data in Excel
3. Load the data into SQL Server
4. Clean the data with SQL
5. Test the data with SQL
6. Visualize the data in Power BI
7. Generate the findings based on the insights
8. Write the documentation 
9. Publish and present findings to the stake holders.


## Data Cleaning

The aim is to normlize and structure our dataset to be ready for analysis.


The cleaned data should meet the following criteria:

- Contain only columns relevant to the analysis
- All data types should be appropriate for the contents of each column
- No null and blank values in the dataset indicating complete data for all records.

To attain a normalized dataset, the following steps are required;

1. Remove irrelavant columns by dropping them from the duplicate table
2. Remove null and blank fields in the dataset


## Data Transformation

The SQL Script for the transformation is [seen here](https://github.com/Ugondu/ONYXEmployeePerformance/blob/main/Assets/SQL%20Script/hr_analytic_sql.sql)


# Visualization

## Results

![image](https://github.com/user-attachments/assets/da87d9b4-8ab9-4592-9648-5af54b1e2d08)


# Analysis

## Insights

### Key Performance Metrics
- Average performance score of male and female employees are 3.00 and 2.99 respectively.
- The employees work an average of 44.95 hours per week, while taking an average of 7.01 days as sick leave.
- 66.7% of the employees were promoted , while 10% resigned showing high employee retention at the organisation.

### Employee Performance Score by Gender
- The average performance scores for females and males are similar, suggesting no significant gender-based differences in performance.

### Employee Performance Score by Remote working
- The dashboard shows that workers whow work remotely 25% of the time scored the highest in ternms of performance.
- The employees who work in the office scored the least in the performance score.

### Employee Performance Score by Salary

- As expected, employees who earned higher than 7283 monthly scored highest in the performance rating. On the other hand, low earning employees had the least score.


### Employee Performance by Length of stay

- Employees that stayed the longest (> 13 years) in the organisation performed best than the rest.

### Employee Performance by sick days

- Employees who took longer up to 14 days of sick leave performed best, suggesting rest may be an important factor in rejuvenating perfromances in workplace

### Employee Performance by Work Hours

- Employees who worked an average of 40 hours performed best.
   


# Recommendations

- Improving Performance:

Tailored Training Programs: Provide department-specific training to address performance gaps and enhance skills.
Mentorship Programs: Pair high-performing employees with less experienced ones to foster knowledge sharing and development.
Performance Recognition: Implement a robust recognition program to reward and motivate top performers.


- Enhancing Employee Engagement:

Flexible Work Arrangements: Consider offering flexible work options, such as remote work or flexible hours, to improve work-life balance.
Employee Engagement Surveys: Conduct regular surveys to gather feedback on employee satisfaction and identify areas for improvement.
Social Events and Activities: Organize team-building activities and social events to foster a positive work culture.


- Optimizing Resource Allocation:

Workload Balancing: Analyze workload distribution across departments and teams to identify potential bottlenecks and reallocate resources as needed.
Skill-Based Staffing: Ensure that employees are matched to roles that align with their skills and experience.
Succession Planning: Develop a succession plan to identify and develop high-potential employees for future leadership roles.

- Addressing Specific Findings:

Remote Work: For those working remotely, consider providing additional support or resources to ensure they have the necessary tools and technology.
Sick Days: Explore strategies to reduce absenteeism, such as implementing wellness programs or offering flexible sick leave policies.
Work Hours: Encourage employees to maintain a healthy work-life balance and avoid excessive overtime.
By implementing these targeted strategies, ONYX can create a more positive and productive work environment, improve employee engagement, and optimize resource allocation to achieve its overall business objectives.










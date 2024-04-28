# SQL-challenge

# Background
I am the new data engineer at Pewlett Hackard (a fictional company). As the data engineer, my first task is to research the people who were emplyed at Pewlett Hackard during the 1980s and 1990s. There are six CSV files that contain information about these employees.

# Objectives
This research project consists of designing the tables the 6 CSV files will be living in and creating an ERD that will map how the tables will be connected and referenced to each other and pulling information from these 6 CSV files to showcase a table containing information we are looking for. The task will include:
  1. Data Modeling
  2. Data Engineering
  3. Data Analysis

# Data Modeling
After inspecting each CSV file, below is a sketch of the Entity Relationship Diagram of the tables using QuickDBD
![image](https://github.com/annacmane/SQL-challenge/assets/160549966/2ea08350-5d23-4f60-ab19-554d99c940a4)

# Data Engineering
Create a table schema to hold information from each CSV file showcasing the data type, primary keys, and foreign keys. 

![image](https://github.com/annacmane/SQL-challenge/assets/160549966/0432bf66-97c4-4aaf-8464-76fc62e03dda)
![image](https://github.com/annacmane/SQL-challenge/assets/160549966/0bf01ec3-e508-47ff-b744-7bbe921156b0)

# Data Analysis
Below are the questions we were reaserching and a snapshot of the information produced

1. List the employee number, last name, first name, sex, and salary of each employee.

![image](https://github.com/annacmane/SQL-challenge/assets/160549966/09fb38d2-c5df-4abc-9fdc-6057531b62ea)

2. List the first name, last name, and hire date for the employees who were hired in 1986.

![image](https://github.com/annacmane/SQL-challenge/assets/160549966/d403974d-b11d-4e53-b2c3-5fac0bfa7d9a)

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

![image](https://github.com/annacmane/SQL-challenge/assets/160549966/4cfc66ee-d739-4a7d-8641-08ef99c97974)

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

![image](https://github.com/annacmane/SQL-challenge/assets/160549966/96285f38-2141-484c-abdd-44a304489e50)

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
   
![image](https://github.com/annacmane/SQL-challenge/assets/160549966/6ccf7b3b-fbf3-4d04-aae2-677091e5b4af)

6. List each employee in the Sales department, including their employee number, last name, and first name.
   
![image](https://github.com/annacmane/SQL-challenge/assets/160549966/726f7683-8b5b-4fac-8e58-b6ba5d07892e)

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

![image](https://github.com/annacmane/SQL-challenge/assets/160549966/c6aaed13-98b1-48cd-813a-43b52c41ac3f)

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

![image](https://github.com/annacmane/SQL-challenge/assets/160549966/f271f3dc-fb2f-43fb-8839-707493d8cb31)


# Instructions

Please follow the instructions below to execute the code in this repository:

1.Clone this repository into your local

2. On SQL, create a database named "employeeSQL" and open a query tool for this database

3. In SQL-challenge, open file employees_schemas.sql and copy the code inside and paste into your query tool from step 2. Run this code

4. You MUST import the files in SQL-challenge/data in the order that the tables were created:
  1. titles
  2. employees
  3. departments
  4. dept_emp
  5. dept_managers
  6. salaries
To do so, in postgreSQL, locate the folder "Tables" in database employeesSQL/Schemas/Tables and right clicking the table names in the order as shown above, clicking "Import/Export Data..." and attaching the corresponding file from SQL-challenge/data -->

5. Open a new query tool.

6. In SQL-challenge, open file employees_queries.sql and 

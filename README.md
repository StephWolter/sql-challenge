# sql-challenge
# Use SQL through Post Gres PGAdmin4 to analyze given data.

## SetUp

* Create Repository in GitHub.
[sql-challenge repository](https://github.com/StephWolter/sql-challenge.git)

* Clone sql-challenge repository to personal computer, then create the folder structure:
'''bash
|-- employeesql                     # Folder for all sql files
|       |-- schema.sql              # Creates Tables
|       |-- sql-challenge.sql       # Main Challenge file       
|-- data                            # Given data files
|       |-- departments.csv
|       |-- dept_emp.csv
|       |-- dept_manager.csv
|       |-- employees.csv
|       |-- salaries.csv
|       |-- titles.csv
|-- QuickDBD-export.png             # ERD Created through QuickDataBaseDiagrams exported in a png file
|-- QuickDBD-export.sql             # ERD Created through QuickDataBaseDiagrams exported in a sql file
|-- README.md
'''
* Examined the brief given on the bootcampspot module challenge #9 page, checked csv files in Visual Studio Code.


## DataGathering

* Created new Database sql-challenge

* Created new Schema to create tables to answer the questions listed on the challenge page.
    * Started by adding "Drop Table If Exists" lines for each table to be listed.
    * Also added block of code to display the different tables for reference during building.

* Created the following tables with column names corresponding to that in the csv files:
    * **employees**
    * **salaries**
    * **departments**
    * **department_employees**
    * **department_manager**
    * **titles**

* Went through the columns listed to add data types and primary keys.  This was edited throughout as questions were added.

* After refreshing tables, use the import function on the list of tables to bring in the csv data, double checking the column names aligned.


## Data Analysis

* Created sql-challenge.sql 

* Began with reference Select * statements for each of the tables.

* Listed the employee number, last name, first name, sex, and salary of each employee.
    * Selected columns for employee number, last name, first name, and sex from the **employees** table.
    * Created an Inner Join with the **salaries** table based on employee number. 

* Listed the first name, last name, and hire date for the employees who were hired in 1986.
    * Selected columns for first name, last name, and hire date from **employees** table.
    * Isolated the hire date to only those dates with "1986" listed as the  year.

* Listed the manager of each department along with their department number, department name, employee number, last name, and first name.
    * Selected both columns from the **department_manager** table; department number and employee number. 
    * With a Left Join add the columns corresponding with department name from the **departments** table. 
    * Joined this with the **employees** table based on the employee number.

* Listed first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
    * Selected first name, last name and sex columns from the **employees** table. 
    * Gave the conditions:
        * First Name = "Hercules"
        * Leftmost Letter of Last Name = "L"

* Listed each employee in the Sales department, including their employee number, last name, and first name.
    * Selected columnns for first name, last name, and employee number from the **employees** table.
    * Used the employee number to link to the **department_employees** table
    * Used the fact that the "emp_title_id" column from the **department_employees** table corresponded with the "dept_no" from the **departments** table
        to filter down to the department name from the **departments** table = "Sales". 

* List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
    * Selected column names for the employee numbers, last names, first names from the **employees** table.
    * Linked between employee numbers on the **employees** table and the **department_employees** table to employee title ids.
    * Linked between employee title ids from the **department_employees** table and the department numbers from the **departments** table
        to get the department names.
    * Created filter to only display those in the Sales or Development departments.

* Listed the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
    * Selected column names to display the last name and the count of instances of that first name (calling it "count of last names")
        from the **employees** table.
    * Grouped them by the last name.
    * Ordered them in descending order by the instances of last name.


## ERD Creation

* Used given link to QuickDatabaseDiagrams

* Used their formatting and entered tables from the schema.sql file.

* Connected tables using the relationships in the sql-challenge.sql file.

* Exported the ERD into a sql file and a png file.


## Wrote out README
* And here we are.

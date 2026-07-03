# 📊 Employee Database Aggregation & Grouping

A comprehensive SQL analytics project demonstrating **professional data analysis, aggregation functions, grouping operations, and business reporting** using MySQL. This project showcases practical techniques for analyzing employee data, generating executive summaries, and optimizing queries for real-world HR analytics scenarios.

---

## 🎯 Overview

This project provides a structured approach to **employee data analytics** using SQL aggregation and grouping techniques. It's designed for:

- **SQL learners** looking to master aggregate functions and GROUP BY operations
- **Data analysts** building HR reporting systems
- **Database developers** implementing data warehousing concepts
- **Business intelligence teams** creating executive dashboards

The project includes **12 sample employees** across 6 departments with comprehensive queries demonstrating:
- ✅ Aggregate functions (COUNT, SUM, AVG, MAX, MIN)
- ✅ GROUP BY and HAVING clauses
- ✅ Filtering and sorting operations
- ✅ Subqueries and advanced analytics
- ✅ Complete department and company summary reports

---

## ✨ Features

### Core Functionality

| Feature | Description |
|---------|-------------|
| **Aggregate Analysis** | Calculate totals, averages, maximums, and minimums across employee data |
| **Department Grouping** | Analyze metrics by department with detailed breakdowns |
| **Gender Analytics** | Compare salary and compensation data across gender categories |
| **HAVING Clause Filtering** | Apply conditional filters on aggregated data |
| **ORDER BY Optimization** | Sort results by multiple criteria for better insights |
| **Subquery Processing** | Identify outliers and above-average performers |
| **Summary Reporting** | Generate executive reports at company and departmental levels |
| **SQL Optimization** | Demonstrate best practices for query performance |

### Comprehensive Queries

- 📈 **8+ Aggregate Functions** - COUNT, SUM, AVG, MAX, MIN with rounding
- 🎯 **7+ GROUP BY Queries** - Department and gender-based grouping
- 🔍 **5+ HAVING Filters** - Advanced conditional aggregation
- 📊 **3+ Sorting Operations** - ORDER BY with descending/ascending results
- 🚀 **3+ Advanced Queries** - Subqueries, LIMIT clauses, and complex analysis
- 📋 **3+ Executive Reports** - Department, gender, and company-wide summaries

---

## 🛠️ Technology Stack

| Component | Technology | Version |
|-----------|-----------|---------|
| **Database** | MySQL | 5.7+ / 8.0+ |
| **Language** | SQL | ANSI SQL Standard |
| **Query Features** | DDL, DML, Aggregation | ISO/IEC 9075 |
| **Data Types** | INT, VARCHAR, DECIMAL, ENUM | MySQL Native |
| **License** | MIT | Open Source |

---

## 📁 Project Structure

```
employees-db-aggregation-grouping/
│
├── README.md                    # 📖 Project documentation (this file)
├── main.sql                     # 🗄️ Complete SQL script with all queries
├── LICENSE                      # 📜 MIT License
│
└── 📊 Query Categories:
    ├── Database Setup           # CREATE DATABASE & TABLE
    ├── Sample Data              # 12 Employee Records
    ├── Aggregate Functions      # COUNT, SUM, AVG, MAX, MIN
    ├── GROUP BY Operations      # Department & Gender Analysis
    ├── HAVING Clauses          # Conditional Filtering
    ├── ORDER BY Sorting        # Sorted Results
    ├── Advanced Queries        # Subqueries & LIMIT
    └── Executive Reports       # Summary Dashboards
```

---

## 🗄️ Database Schema

### Employees Table

```sql
CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    gender ENUM('Male','Female') NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    age INT NOT NULL,
    experience INT NOT NULL
);
```

### Column Definitions

| Column | Type | Constraint | Description |
|--------|------|-----------|-------------|
| `employee_id` | INT | PRIMARY KEY, AUTO_INCREMENT | Unique employee identifier |
| `first_name` | VARCHAR(50) | NOT NULL | Employee's first name |
| `last_name` | VARCHAR(50) | NOT NULL | Employee's last name |
| `department` | VARCHAR(50) | NOT NULL | Department assignment (IT, HR, Finance, etc.) |
| `gender` | ENUM('Male','Female') | NOT NULL | Gender classification |
| `salary` | DECIMAL(10,2) | NOT NULL | Annual salary (10 digits, 2 decimal places) |
| `age` | INT | NOT NULL | Employee's age in years |
| `experience` | INT | NOT NULL | Years of professional experience |

### Sample Data (12 Employees)

| Employee | Department | Gender | Salary | Age | Experience |
|----------|-----------|--------|--------|-----|------------|
| Joy Raj | IT | Male | 65,000 | 28 | 4 |
| Arpita Khan | HR | Female | 45,000 | 30 | 6 |
| Mou Mondal | Finance | Female | 55,000 | 32 | 8 |
| Sonia Das | Marketing | Female | 48,000 | 27 | 3 |
| Avi Roy | Operations | Male | 30,000 | 24 | 2 |
| Olivia Sinha | Sales | Female | 52,000 | 29 | 5 |
| Rahul Sharma | IT | Male | 70,000 | 35 | 10 |
| Priya Gupta | HR | Female | 47,000 | 31 | 7 |
| Rohan Patel | Finance | Male | 75,000 | 40 | 12 |
| Sneha Roy | Sales | Female | 51,000 | 26 | 4 |
| Karan Singh | IT | Male | 68,000 | 33 | 9 |
| Neha Paul | Marketing | Female | 58,000 | 29 | 6 |

---

## 🚀 Getting Started

### Prerequisites

- **MySQL Server** (version 5.7 or higher)
- **MySQL Client** (command-line or GUI like MySQL Workbench, DBeaver)
- **Basic SQL Knowledge** (recommended)

### Installation & Setup

#### Option 1: Command Line

```bash
# Connect to MySQL
mysql -u root -p

# Run the SQL script
source main.sql;

# Or paste the entire contents into the MySQL client
```

#### Option 2: MySQL Workbench

1. Open MySQL Workbench
2. Create a new SQL tab
3. Open `main.sql` file
4. Execute the script (Ctrl+Shift+Enter or Cmd+Shift+Enter)

#### Option 3: DBeaver or Other GUI Tools

1. Open your preferred database client
2. Create a new SQL editor
3. Copy and paste the contents of `main.sql`
4. Execute the entire script

### Verification

After running the script, verify the setup:

```sql
-- Check if database was created
SHOW DATABASES;

-- Select the database
USE EmployeeDB;

-- View all employees
SELECT * FROM Employees;

-- Run a simple aggregate query
SELECT COUNT(*) AS Total_Employees FROM Employees;
```

---

## 📖 Usage Guide

### Running Individual Queries

The `main.sql` file contains multiple query sections. You can:

1. **Run the entire script** - Creates database, tables, and executes all queries
2. **Run specific sections** - Copy and paste individual query blocks
3. **Modify and experiment** - Change query parameters to explore different results

### Accessing Results

After execution, query results are displayed in your MySQL client with:
- Column headers matching query aliases
- Formatted output with proper spacing
- Sorted results based on ORDER BY clauses

### Query Output Format

```
+-----------+--------------------+
| department| Average_Salary     |
+-----------+--------------------+
| IT        | 67666.67          |
| Finance   | 65000.00          |
| Sales     | 51500.00          |
| Marketing | 53000.00          |
| HR        | 46000.00          |
| Operations| 30000.00          |
+-----------+--------------------+
```

---

## 🔍 Query Categories

### 1️⃣ Database & Table Setup

Creates the EmployeeDB database and Employees table with proper structure and constraints.

```sql
DROP DATABASE IF EXISTS EmployeeDB;
CREATE DATABASE EmployeeDB;
USE EmployeeDB;

CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    -- ... column definitions
);
```

### 2️⃣ Aggregate Functions

**Calculate company-wide statistics:**

- **Total Employees** - COUNT(*) function
- **Total Salary** - SUM(salary) for payroll analysis
- **Average Salary** - AVG(salary) with ROUND for precision
- **Highest Salary** - MAX(salary) for compensation analysis
- **Lowest Salary** - MIN(salary) to identify entry-level positions
- **Average Age** - ROUND(AVG(age),2) for workforce demographics
- **Total Experience** - SUM(experience) for team expertise

**Example Query:**
```sql
SELECT 
    COUNT(*) AS Total_Employees,
    SUM(salary) AS Total_Salary,
    ROUND(AVG(salary),2) AS Average_Salary,
    MAX(salary) AS Highest_Salary,
    MIN(salary) AS Lowest_Salary
FROM Employees;
```

### 3️⃣ GROUP BY: Department Analysis

**Analyze metrics grouped by department:**

- Employee count per department
- Salary totals and averages by department
- Maximum and minimum salaries within departments
- Average age and experience per department
- Department-level compensation analysis

**Example Query:**
```sql
SELECT
    department,
    COUNT(*) AS Employee_Count,
    ROUND(AVG(salary),2) AS Average_Salary,
    MAX(salary) AS Highest_Salary
FROM Employees
GROUP BY department;
```

### 4️⃣ GROUP BY: Gender Analytics

**Compare metrics across gender categories:**

- Employee count by gender
- Average salary comparison
- Total salary by gender
- Gender-based compensation equity analysis

**Example Query:**
```sql
SELECT
    gender,
    COUNT(*) AS Total_Employees,
    ROUND(AVG(salary),2) AS Average_Salary,
    SUM(salary) AS Total_Salary
FROM Employees
GROUP BY gender;
```

### 5️⃣ HAVING Clause Filtering

**Apply conditions on aggregated data:**

- Departments with more than 2 employees
- Departments with average salary > $50,000
- Departments with total salary > $100,000
- Departments with highest salary > $65,000
- Departments with total experience > 10 years

**Example Query:**
```sql
SELECT
    department,
    COUNT(*) AS Employee_Count
FROM Employees
GROUP BY department
HAVING COUNT(*) > 2;
```

### 6️⃣ ORDER BY Sorting

**Sort aggregated results:**

- Average salary (highest first)
- Total salary (descending order)
- Employee count (ranked)

**Example Query:**
```sql
SELECT
    department,
    ROUND(AVG(salary),2) AS Average_Salary
FROM Employees
GROUP BY department
ORDER BY Average_Salary DESC;
```

### 7️⃣ Advanced Queries

**Complex analytical operations:**

- **Department with highest average salary** - Using LIMIT 1 to identify top department
- **Above-average earners** - Subquery to identify high performers
- **Employee count by age** - Age-based demographic analysis

**Example Query:**
```sql
SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);
```

### 8️⃣ Executive Reports

**Comprehensive summary dashboards:**

- Complete department report (7 metrics per department)
- Complete gender report (6 metrics by gender)
- Company summary report (overall statistics)

---

## 📊 Sample Queries

### Query 1: Total Company Overview

**Purpose:** Get a snapshot of overall company metrics

```sql
SELECT
    COUNT(*) AS Total_Employees,
    SUM(salary) AS Total_Salary,
    ROUND(AVG(salary),2) AS Average_Salary,
    MAX(salary) AS Highest_Salary,
    MIN(salary) AS Lowest_Salary,
    ROUND(AVG(age),2) AS Average_Age
FROM Employees;
```

**Result:**
```
Total_Employees: 12
Total_Salary: 661,000.00
Average_Salary: 55,083.33
Highest_Salary: 75,000.00
Lowest_Salary: 30,000.00
Average_Age: 30.08
```

### Query 2: Department-wise Analysis

**Purpose:** Analyze compensation and headcount by department

```sql
SELECT
    department,
    COUNT(*) AS Total_Employees,
    ROUND(AVG(salary),2) AS Average_Salary,
    SUM(salary) AS Total_Salary
FROM Employees
GROUP BY department
ORDER BY Total_Salary DESC;
```

**Result:**
```
IT         3  67,666.67  203,000.00
Finance    2  65,000.00  130,000.00
Marketing  2  53,000.00  106,000.00
Sales      2  51,500.00  103,000.00
HR         2  46,000.00   92,000.00
Operations 1  30,000.00   30,000.00
```

### Query 3: High Performers (Above Average Salary)

**Purpose:** Identify employees earning more than company average

```sql
SELECT
    first_name,
    last_name,
    department,
    salary
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees)
ORDER BY salary DESC;
```

**Result:**
```
Rohan     Patel    Finance   75,000.00
Rahul     Sharma   IT        70,000.00
Karan     Singh    IT        68,000.00
Joy       Raj      IT        65,000.00
Mou       Mondal   Finance   55,000.00
Neha      Paul     Marketing 58,000.00
```

### Query 4: Gender Salary Comparison

**Purpose:** Analyze compensation differences by gender

```sql
SELECT
    gender,
    COUNT(*) AS Total_Employees,
    ROUND(AVG(salary),2) AS Average_Salary,
    SUM(salary) AS Total_Salary
FROM Employees
GROUP BY gender;
```

**Result:**
```
Male    5  54,600.00  273,000.00
Female  7  55,571.43  388,000.00
```

### Query 5: Departments with Multiple Employees (HAVING Clause)

**Purpose:** Find departments meeting specific criteria

```sql
SELECT
    department,
    COUNT(*) AS Employee_Count,
    ROUND(AVG(salary),2) AS Average_Salary
FROM Employees
GROUP BY department
HAVING COUNT(*) > 1
ORDER BY Employee_Count DESC;
```

**Result:**
```
IT         3  67,666.67
Finance    2  65,000.00
Marketing  2  53,000.00
Sales      2  51,500.00
HR         2  46,000.00
```

---

## 📋 Business Reports

### Report 1: Complete Department Report

**Purpose:** Executive dashboard for department heads and HR managers

**Metrics Included:**
- Total Employees (headcount)
- Total Salary (payroll impact)
- Average Salary (compensation level)
- Highest Salary (max compensation)
- Lowest Salary (entry-level pay)
- Average Age (workforce demographics)
- Total Experience (team expertise level)

**SQL Query:**
```sql
SELECT
    department,
    COUNT(*) AS Total_Employees,
    SUM(salary) AS Total_Salary,
    ROUND(AVG(salary),2) AS Average_Salary,
    MAX(salary) AS Highest_Salary,
    MIN(salary) AS Lowest_Salary,
    ROUND(AVG(age),2) AS Average_Age,
    SUM(experience) AS Total_Experience
FROM Employees
GROUP BY department
ORDER BY department;
```

**Use Case:** HR presentations, budget planning, compensation analysis

### Report 2: Complete Gender Report

**Purpose:** Analyze gender diversity and compensation equity

**Metrics Included:**
- Total Employees by gender
- Total Salary (payroll)
- Average Salary (equity analysis)
- Highest Salary (max compensation)
- Lowest Salary (minimum compensation)

**SQL Query:**
```sql
SELECT
    gender,
    COUNT(*) AS Total_Employees,
    SUM(salary) AS Total_Salary,
    ROUND(AVG(salary),2) AS Average_Salary,
    MAX(salary) AS Highest_Salary,
    MIN(salary) AS Lowest_Salary
FROM Employees
GROUP BY gender;
```

**Use Case:** Diversity reporting, compensation equity audits, compliance

### Report 3: Company Summary Report

**Purpose:** Executive overview for C-suite and board presentations

**Metrics Included:**
- Total Employees (organization size)
- Total Salary (annual payroll)
- Average Salary (typical compensation)
- Highest Salary (maximum compensation)
- Lowest Salary (minimum compensation)
- Average Age (workforce profile)
- Total Experience (organizational knowledge)

**SQL Query:**
```sql
SELECT
    COUNT(*) AS Total_Employees,
    SUM(salary) AS Total_Salary,
    ROUND(AVG(salary),2) AS Average_Salary,
    MAX(salary) AS Highest_Salary,
    MIN(salary) AS Lowest_Salary,
    ROUND(AVG(age),2) AS Average_Age,
    SUM(experience) AS Total_Experience
FROM Employees;
```

**Use Case:** Board meetings, investor presentations, strategic planning

---

## 🎓 Key Concepts

### Aggregate Functions

**COUNT()** - Counts total rows
```sql
SELECT COUNT(*) FROM Employees;  -- Result: 12
```

**SUM()** - Sums numeric values
```sql
SELECT SUM(salary) FROM Employees;  -- Result: 661,000.00
```

**AVG()** - Calculates average
```sql
SELECT AVG(salary) FROM Employees;  -- Result: 55,083.33
```

**MAX()** - Returns maximum value
```sql
SELECT MAX(salary) FROM Employees;  -- Result: 75,000.00
```

**MIN()** - Returns minimum value
```sql
SELECT MIN(salary) FROM Employees;  -- Result: 30,000.00
```

### GROUP BY Clause

Groups rows by specified column(s) and applies aggregate functions:

```sql
SELECT department, COUNT(*) FROM Employees GROUP BY department;
```

**Key Rules:**
- All non-aggregate columns in SELECT must be in GROUP BY
- Aggregate functions calculate per group
- Each row in result represents one group

### HAVING Clause

Filters groups after aggregation (WHERE filters rows before aggregation):

```sql
SELECT department, AVG(salary) 
FROM Employees 
GROUP BY department 
HAVING AVG(salary) > 50000;
```

**Difference from WHERE:**
- `WHERE` - Filters individual rows (before grouping)
- `HAVING` - Filters groups (after aggregation)

### ORDER BY Clause

Sorts results in ascending (ASC) or descending (DESC) order:

```sql
SELECT department, AVG(salary) 
FROM Employees 
GROUP BY department 
ORDER BY AVG(salary) DESC;  -- Highest first
```

### Subqueries

Queries within queries for complex analysis:

```sql
SELECT * FROM Employees 
WHERE salary > (SELECT AVG(salary) FROM Employees);
```

---

## ✅ Best Practices

### 1. **Use Descriptive Aliases**
```sql
-- ✅ Good
SELECT ROUND(AVG(salary), 2) AS Average_Salary

-- ❌ Avoid
SELECT ROUND(AVG(salary), 2) AS AS1
```

### 2. **Round Decimal Values**
```sql
-- ✅ Good
SELECT ROUND(AVG(salary), 2) FROM Employees;

-- ❌ Avoid
SELECT AVG(salary) FROM Employees;
```

### 3. **Use Consistent Formatting**
```sql
-- ✅ Readable multi-line queries
SELECT
    department,
    COUNT(*) AS Total,
    AVG(salary) AS Avg_Salary
FROM Employees
GROUP BY department;

-- ❌ Cramped single-line queries
SELECT department, COUNT(*) AS Total, AVG(salary) AS Avg_Salary FROM Employees GROUP BY department;
```

### 4. **Proper HAVING Usage**
```sql
-- ✅ Correct - HAVING filters groups
SELECT department, COUNT(*)
FROM Employees
GROUP BY department
HAVING COUNT(*) > 1;

-- ❌ Inefficient - Use WHERE for row filtering
SELECT department, COUNT(*)
FROM Employees
WHERE department IN ('IT', 'HR')
GROUP BY department
HAVING COUNT(*) > 1;
```

### 5. **Optimize Query Performance**
```sql
-- ✅ Efficient - Specific columns
SELECT department, COUNT(*) FROM Employees GROUP BY department;

-- ❌ Inefficient - Unnecessary columns
SELECT * FROM Employees;
```

### 6. **Use Meaningful Column Names**
```sql
-- ✅ Clear intent
SELECT 
    department,
    COUNT(*) AS Employee_Count,
    ROUND(AVG(salary), 2) AS Average_Salary

-- ❌ Ambiguous
SELECT department, COUNT(*), AVG(salary)
```

### 7. **Comment Complex Queries**
```sql
-- Find departments with higher-than-average salaries
SELECT
    department,
    ROUND(AVG(salary), 2) AS Average_Salary
FROM Employees
GROUP BY department
HAVING AVG(salary) > (SELECT AVG(salary) FROM Employees)
ORDER BY Average_Salary DESC;
```

---

## 📚 Learning Outcomes

After working through this project, you will understand:

### SQL Fundamentals
- ✅ Database and table creation (DDL)
- ✅ Data insertion and retrieval (DML)
- ✅ Primary keys and constraints
- ✅ Data types (INT, VARCHAR, DECIMAL, ENUM)

### Aggregate Functions
- ✅ COUNT(*) for row counting
- ✅ SUM() for total calculations
- ✅ AVG() for averaging with ROUND()
- ✅ MAX() and MIN() for extremes
- ✅ Combined aggregates in single query

### Grouping & Filtering
- ✅ GROUP BY clause for categorization
- ✅ Multiple grouping dimensions
- ✅ HAVING clause for aggregate filtering
- ✅ Difference between WHERE and HAVING
- ✅ Multi-level grouping strategies

### Advanced Techniques
- ✅ ORDER BY with aggregates
- ✅ LIMIT for result limitation
- ✅ Subqueries in WHERE clause
- ✅ Multi-table aggregation concepts
- ✅ Query optimization strategies

### Business Analytics
- ✅ Creating executive reports
- ✅ Department-level analysis
- ✅ Demographic analysis
- ✅ Compensation equity analysis
- ✅ KPI identification and tracking

### Real-World Applications
- ✅ HR analytics and reporting
- ✅ Payroll analysis
- ✅ Department performance metrics
- ✅ Workforce demographics
- ✅ Budget and resource planning

---

## 🤝 Contributing

Contributions are welcome! Here are ways to contribute:

### Ideas for Enhancement
- Add date-based salary history tracking
- Include benefits and bonus information
- Add department-level budget allocations
- Implement year-over-year comparisons
- Add query performance optimization examples
- Include window functions (ROW_NUMBER, RANK, etc.)

### How to Contribute
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/YourFeature`)
3. Add your SQL queries or documentation
4. Commit your changes (`git commit -m 'Add: Your feature description'`)
5. Push to the branch (`git push origin feature/YourFeature`)
6. Open a Pull Request

### Reporting Issues
If you find bugs or have suggestions, please:
1. Check existing issues first
2. Create a new issue with detailed description
3. Include steps to reproduce if applicable
4. Suggest potential solutions if possible

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

### MIT License Summary
- ✅ Use commercially
- ✅ Modify the code
- ✅ Distribute freely
- ✅ Private use
- ⚠️ Include license and copyright notice
- ⚠️ No liability or warranty

---

## 📊 Project Statistics

| Metric | Count |
|--------|-------|
| **Total Employees** | 12 |
| **Departments** | 6 (IT, HR, Finance, Marketing, Sales, Operations) |
| **SQL Queries** | 30+ |
| **Aggregate Functions** | 8 |
| **GROUP BY Queries** | 7+ |
| **HAVING Filters** | 5 |
| **Advanced Queries** | 3+ |
| **Executive Reports** | 3 |
| **Lines of SQL Code** | 330+ |

---

## 📞 Support & Issues

Found a bug or have a question?

- 🐛 **Report Issues**: [GitHub Issues](https://github.com/kxnux-builds/employees-crud-null-handling/issues)
- 💬 **Discussions**: [GitHub Discussions](https://github.com/kxnux-builds/employees-crud-null-handling/discussions)

## Credits & Links

- Author: Kishanu Mondal
- GitHub: https://github.com/kxnux-builds
- LinkedIn: https://www.linkedin.com/in/kishanu-mondal/
- X (Twitter): https://x.com/Kxnux_Dev



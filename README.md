# Company Database Lab – Microsoft Access

This repository contains the implementation of a relational company database using Microsoft Access as part of a database systems lab assignment. It includes schema creation, data insertion, query solving (SELECT, UPDATE, DELETE), and business logic implementation based on a given company dataset.

## 📁 Structure

schema/ -- CREATE TABLE statements (DDL)
data/ -- INSERT INTO statements (DML)
queries/ -- SQL queries for solving assignment tasks
diagrams/ -- (Optional) ERD or schema diagrams
access-version/ -- (Optional) MS Access file or screenshots

markdown
Copy
Edit

## 📚 Description

The database includes the following tables:
- `Employee`
- `Department`
- `Project`
- `Works_for`
- `Dependent`

The project covers:
- Table creation and relationship constraints
- Populating tables with initial data
- Writing SQL queries to retrieve, update, and delete records
- Handling referential integrity and relational joins
- Solving business-specific logic (e.g., managers with no dependents)

## ⚠ Notes

- This lab was built using **Microsoft Access**, so some SQL syntax is slightly different from MySQL/PostgreSQL.
- Pay attention to field data types and relationships when importing or modifying data.

## ✅ Usage

1. Open `company-database.accdb` in Microsoft Access (if included).
2. Alternatively, copy and paste the SQL files into Access's SQL view in the Query Design tool.
3. Check the `queries/` folder for ready-to-run query solutions.

## 👨‍💻 Author

Abdallah Ramadan - github.com/AbdallahSaqr

---

Feel free to fork, clone, and explore.

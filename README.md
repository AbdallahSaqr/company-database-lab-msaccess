# 📊 SQL Queries – Company Database Labs (Microsoft Access)

This folder contains the SQL queries for solving Lab 2 and Lab 3 exercises based on a Company Database schema. The queries were tested and written for **Microsoft Access** and cover a wide range of SQL operations including selection, joins, aggregation, subqueries, and filtering.

---

## 🧪 Files Included

### 🔹 `lab2_queries.sql`
Contains solutions to Lab 2 tasks, such as:
- Basic SELECT statements with `WHERE` and `BETWEEN`
- String operations and column aliasing
- Use of `LIKE` for pattern matching
- Multi-condition filters using `AND` / `OR`

### 🔹 `lab3_queries.sql`
Contains solutions to Lab 3 tasks, including:
- Multi-table `JOIN` queries
- Subqueries (e.g., `WHERE IN`, `WHERE = (SELECT ...)`)
- Aggregation with `GROUP BY` and `HAVING`
- Sorting with `ORDER BY`

---

## 🧠 How to Use

1. Open **Microsoft Access** and load the Company Database.
2. Go to **Create > Query Design** → switch to **SQL View**.
3. Copy any query from these `.sql` files and paste it into SQL View.
4. Click **Run** (red exclamation mark) to execute the query.

---

## 📝 Notes

- Some queries rely on specific schema/table names (`Departments`, `Employee`, `Project`, `Works_for`, `Dependent`). Make sure your Access tables use the same names or update the queries accordingly.
- Date literals are written using `#MM/DD/YYYY#` as required by Access.
- String concatenation uses `&`, not `+`, in Access SQL.

---

## 👨‍💻 Author

Abdallah Ramadan  
Lab Work: SQL – Database Fundamentals  
Format: Microsoft Access SQL

---

Feel free to explore, modify, and adapt these queries to your own database assignments.

# MySQL Workshop Project — Quotes Database  

![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)  
*A learning project exploring database design, SQL relationships, and data import/export using MySQL Workbench and phpMyAdmin.*

---

##  Overview
This project demonstrates the process of designing, creating, and managing a relational database in **MySQL**, using **MySQL Workbench** for modeling and **XAMPP (phpMyAdmin)** for local testing and data import/export.  

The database, called **quotes_db**, stores inspirational quotes, their authors, and categories — with proper foreign key relationships between tables.

---

##  Database Structure
**Tables:**
- category – stores quote categories (e.g., politics, love, philosophy)  
- source – stores information about the author/source of each quote  
- quotes – stores the actual quotes  
- category_quotes – linking table (many-to-many relationship between quotes and categories)

**Relationships:**
- One *source* → many *quotes*  
- Many *quotes* ↔ many *categories*

---

##  How I Set Up the Database

###  Steps I Followed
1. Designed the **EER diagram** in **MySQL Workbench**  
2. Used **Forward Engineer** to generate and execute the CREATE TABLE scripts automatically  
3. Started **Apache** and **MySQL** from the **XAMPP Control Panel**  
4. Opened **phpMyAdmin** at http://localhost/phpmyadmin
5. Verified that the database (quotes_db) and all tables were successfully created  
6. Used **Import (CSV)** in phpMyAdmin to populate each table with data  

---

 *Result:*  
The database and all relationships were visible immediately in phpMyAdmin — no manual SQL import required.  

After verifying everything worked correctly,  
I exported the full database (quotes_db_dump.sql) so it can be shared or restored easily in the future.

---

##  SQL Practice Example
Once the data was loaded, I ran the following JOIN query 


SELECT 
  quote_text AS quote, 
  s_name AS name, 
  c_name AS category
FROM 
  quotes, category, category_quotes, source
WHERE 
  qid = qid_fk 
  AND cid = cid_fk 
  AND sid = sid_fk 
  AND c_name = "philosophy";


This query returns all quotes in the “philosophy” category, along with their authors.

## Screenshots
![EER Diagram](screenshots/workbench-diagram.png)

![phpMyAdmin Import](screenshots/phpmyadmin-import-fixes.png)

![JOIN Query Result](screenshots/join-query-output.png)



## Process Summary

Designed the EER model in MySQL Workbench

Forward engineered it into a MySQL database

Imported data via .csv files

Troubleshot errors involving duplicate keys and foreign key constraints

Validated database joins and relationships through test queries


## Lessons Learned

Importing CSV files safely in phpMyAdmin

Troubleshooting “duplicate entry” and “foreign key” errors

Using JOIN queries to combine related data

Exporting and documenting SQL databases

Handling import errors and foreign key constraints

Using JOIN queries to combine data

Difference between CSV and SQL imports

How to handle CSV imports properly (headers, quoting, and encoding)

How to manage and organize SQL projects for GitHub

## License

This project is licensed under the MIT License

## Author
**Olan-George Faith**  
[Linkedin](www.linkedin.com/in/faith-olan-george-abb2b0286) |  [GitHub](https://github.com/faithcodes-lab)

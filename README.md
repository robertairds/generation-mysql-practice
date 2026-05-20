# 📊 Relational Database Management - MySQL Exercises

<p align="center">
  <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL Badge"/>
  <img src="https://img.shields.io/badge/SQL-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white" alt="SQL Badge"/>
  <img src="https://img.shields.io/badge/Database-Database?style=for-the-badge&color=4ED1BA" alt="Database Badge"/>
</p>

This repository contains practical backend and database exercises developed during Relational Database classes using **MySQL**. The scripts cover everything from database creation and data manipulation to advanced data queries using table joins.

---

## 🛠️ Technologies and Concepts Applied

* **RDBMS:** MySQL
* **DDL (Data Definition Language):** `CREATE DATABASE`, `CREATE TABLE`
* **DML (Data Manipulation Language):** `INSERT INTO`, `UPDATE`, `DELETE`
* **DQL (Data Query Language):** `SELECT`, `WHERE`, `BETWEEN`, `LIKE`
* **Database Relationships:** Primary Keys (`PRIMARY KEY`), Foreign Keys (`FOREIGN KEY`), and `INNER JOIN`
* **Database Modeling:** Entity-Relationship Diagrams (ERD) and Forward Engineering via MySQL Workbench

---

## 📁 Repository Structure

The project is organized into individual SQL files, each addressing a distinct business scenario and logic requirement:

| File Name | Business Scenario | Core Concepts Explored |
| :--- | :--- | :--- |
| `exe01.sql` | **HR (Human Resources)** | Single table structure, conditional filters based on salary ranges, and record updating (`UPDATE`). |
| `exe02.sql` | **E-commerce Bookstore** | Inventory management, precise price controls using `DECIMAL`, and value-based query filtering. |
| `exe03.sql` | **School Grading System** | Student enrollment, academic grade tracking, and conditional filtering for passing grades. |
| `exe04.sql` | **Online RPG Game** | 1:N Relationship (Classes & Characters), usage of `BETWEEN`, `LIKE` operators, and `INNER JOIN`. |
| `exe05.sql` | **Pizzeria Order Control** | Relational logic between Pizzas and Categories, text pattern matching, and conditional `INNER JOIN` queries. |
| `exe06.sql` | **Cruelty-Free Pharmacy** | Composite query filtering, foreign key management, and sector-specific data extraction using table joins. |
| `loja_games.sql` | **Game Store E-commerce** | Multi-table relationship architecture mapping Categories, Users, and Products, including full DDL constraint definitions and referential integrity configuration. |

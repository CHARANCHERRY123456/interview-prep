The following points summarize the content of the 25 questions and answers from the video transcript, formatted for easy recall and use in an .md file.

***

## Top 25 DBMS Interview Questions (Key Points Summary)

### 1. What do you understand by DBMS and state its application?

*   **DBMS Definition:** A collection of programs that keeps data **sorted, secure, and easy to retrieve**.
*   **Functionality:** Allows users to **create databases, insert/update information, and run queries** to extract specific data.
*   **Key Benefit:** Unlike old file systems, it **avoids duplication and ensures consistency**.
*   **Applications:**
    *   **Banks** tracking transactions.
    *   **E-commerce sites** managing inventory.
    *   Provides **backup and Recovery**.
    *   Restricts **unauthorized access**.
    *   Makes **data processing fast**.
*   **Examples:** MySQL, Oracle, Amazon simple DB.

### 2. What do you mean by primary key?

*   A primary key is a **column in a table**.
*   It **uniquely identifies each record**.
*   Ensures **no confusion or duplication**.
*   Helps keep data **organized and reliable**.
*   *Example:* Student ID in a student record table.

### 3. What is the difference between unique and null constraint?

| Constraint | Purpose | Key Rule |
| :--- | :--- | :--- |
| **Unique Constraint** | Ensures all values in a column are **distinct**. | Allows **only one null value** in a column. |
| **Null Constraint** | Controls whether a column can have **null values** (missing/unknown data). | A `NOT NULL` constraint **ensures every row must have a valid non-null value**. |
| **In Short** | Unique ensures **distinctness** (allowing one null). | Null enforces the **presence or absence of values**. |

### 4. What is the degree of a relation?

*   Refers to the **number of attributes or columns in a table**.
*   Tells **how many pieces of information each record can hold**.
*   **Classification by Degree:**
    *   One column: **Unity relation**.
    *   Two columns: **Binary relation**.
    *   Three columns: **Ternary relation**.
*   Understanding the degree helps in **designing efficient databases and writing queries**.

### 5. Differentiate between logical database design and physical database design.

| Design Type | Focus | Key Characteristics |
| :--- | :--- | :--- |
| **Logical Design** | Focuses on **what data should be stored** and **how it should be organized conceptually**. | Defines attributes, entities, relationships, and constraint **without worrying about storage**. It is **abstract and platform independent**. |
| **Physical Design** | Deals with **how the data will stored in the system**. | Specifies data **storage format, indexing, partitioning, and access method**. |
| **Summary** | Logical design is about **structure**. | Physical design is about the **implementation**. |

### 6. How many types of databases languages are there?

Database language helps to **create, manage, update, and retrieve data**.

1.  **Data Definition Language (DDL):**
    *   Used to **define the database internal structure and pattern**.
    *   Commands: `create`, `alter`, `drop`, `truncate`, and `rename`.
2.  **Data Manipulation Language (DML):**
    *   Used to **manipulate the data in the database**.
    *   Commands: `insert`, `update`, `delete`.
3.  **Data Query Language (DQL):**
    *   Helps **fetch the data**.
    *   Command: `select` statement.

### 7. What are indexes?

*   A technique used to **quickly locate and access data**.
*   Improves query performance by **reducing the number of disc reads**.
*   Works like a **book's index** pointing to the location of specific data.
*   Created on columns that are **frequently searched or sorted**.
*   Uses a **search key** (primary key/candidate key) and a **data reference/pointer**.
*   Common indexes: **primary, unique, and cluster index**.

### 8. What is the difference between WHERE and HAVING Clause?

| Clause | Purpose | Execution Stage | Aggregate Functions Use |
| :--- | :--- | :--- | :--- |
| **WHERE** | Filters **rows**. | Filters rows **before any grouping occurs**. | **Cannot use** aggregate functions (like `sum` or `count`). |
| **HAVING** | Filters **groups**. | Filters groups **after the grouping is done**. | **Specifically used** with aggregate functions. |

### 9. What do you mean by transaction?

*   A transaction is a **sequence of logically connected operations** that are **treated as a single unit**.
*   Operations involve **Reading, Writing, or modifying data**.
*   Ensures a database remains **consistent, reliable, and free from errors** (even during failures).
*   **Key Operations:** `read`, `write`, `commit`, and `roll back`.
*   Essential for **data integrity and consistency**.

### 10. What do you mean by query optimization?

*   It is about finding the **fastest and least resource heavy way to fetch the data**.
*   The DBMS looks at all possible **execution paths** and chooses the best one based on **speed, memory uses, and CPU load**.
*   **Goals/Importance:**
    *   **Reduce system resource** required to fulfill a query.
    *   Provide user with **faster result**.
    *   Allows the system to service **more query**.
    *   Reduces the amount of **wear on the hardware** (e.g., disk drive).

### 11. Difference between file system and database management system.

| Feature | File System | Database Management System (DBMS) |
| :--- | :--- | :--- |
| **Structure** | Organizes files in directories/subdirectories. | Stores data in the form of **tables with rows and columns**. |
| **Redundancy** | **Higher redundancy** due to file duplication. | **Minimizes the redundancy**. |
| **Backup/Recovery**| **No inbuilt backup or recovery tool**. | Provides **very good backup**. |
| **Consistency** | Very **less consistent**. | Offers data **consistency**. |
| **Query Capability**| **Lacks efficient query capabilities**. | Offers **optimized query processing**. |
| **Security** | Has **limited security features**. | Offers **advanced security mechanism**. |
| **Cost** | **Less expensive**. | **Higher in cost** but offers more functionality. |

### 12. What is an ER model in DBMS?

*   **Definition:** A **visual representation of database structure**.
*   **Focus:** Entities, attributes, and relationships.
*   **Components:**
    1.  **Entity:** Real-world objects with **independent existence** (e.g., book, member).
    2.  **Attributes:** **Properties** of the entity (e.g., book ID, author).
    3.  **Relationship:** **Connection between the entities**.
*   **Purpose:** **Helps in making the tables in DBMS**.

### 13. Difference between entity, entity type and entity set.

*   **Entity:** A **specific object in real world** with independent existence. Represents a **single row or record** in a table.
*   **Entity Type:** A **category or a schema defining the structures of entity**. Represents the **name of a table** (e.g., the overall structure *Student* with attributes ID, Name, Age).
*   **Entity Set:** A **collection of all the entities**. Represents **all the rows or records of a table**.

### 14. What do you mean by generalization and specialization in DBMS?

| Concept | Approach | Definition | Example |
| :--- | :--- | :--- | :--- |
| **Generalization** | **Bottom up approach**. | **Extracting common properties** from a set of entities and combining them into a **higher-level entity**. | Faculty and Student (two entities) generalized into a Person (higher-level entity). |
| **Specialization** | **Top down approach**. | Entities are **divided into sub-entities** based on their characteristics (must share some common properties). | Employee specialized into Tester or Developer. |

### 15. What do you mean by relational algebra?

*   Consists of **certain sets of rule or operation** used to **manipulate and query data** from relational database.
*   It is a **procedural query language**.
*   Provides a **foundation for SQL**.
*   Uses **mathematical symbols**.
*   **Key Operators:**
    *   **Selection (Sigma):** Filters **rows** based on a condition.
    *   **Projection (Pi):** Works on **columns**; removes all duplicate data by default.
    *   **Union:** Combines the **result of two queries**.
    *   **Set Difference:** Provides rows present in one relation but not the other.
    *   **Cartesian Product (Cross Product):** Combines **every row of one table with every row of another table**.
    *   **Rename:** Renames the table name.

### 16. What do you mean by normalization?

*   **Definition:** The process of **organizing data to reduce the redundancy and dependency**.
*   **Purpose:** Ensures **data consistency** and **improves database efficiency**.
*   **Method:** Works by **dividing a larger table into smaller and related table**.
*   **Normal Forms (NF):**
    *   **1NF:** Each table cell should contain only a **single value** (atomic values).
    *   **2NF:** Must be in 1NF, and all non-key attributes must be **fully functional dependent upon the primary key**.
    *   **3NF:** Must be in 2NF, and **no transitive dependencies should exist** (each column directly related to primary key, not other non-key columns).
    *   **BCNF (Boyce-Codd NF):** Stricter than 3NF, ensures each determinant in a table is a **candidate key**.
    *   **4NF:** Must be in BCNF and have **no multivalue dependency**.
    *   **5NF:** Must be in 4NF and not contain any **join dependency**; joining must be **lossless**.

### 17. Explain the difference between clustered and non-clustered index.

| Feature | Clustered Index | Non-Clustered Index |
| :--- | :--- | :--- |
| **Physical Storage** | Data is **stored and sorted physically in the table**. | Data is stored in one place, and the **index is stored in another place**. |
| **Count per Table** | **Only one** cluster index per table is allowed. | **Multiple** non-cluster indexes are allowed per table. |
| **Retrieval Speed** | Results in **faster for range queries**. | Is **slower** than the clustered index for retrieval. |
| **Structure** | The data pointer is the **actual data** (the rows are reordered). | The index contains the **pointer to the data** (it is a copy, not the original value). |

### 18. What are triggers?

*   A trigger is like an **automatic rule or action that database runs for you**.
*   It executes when a **specific event occurs** (e.g., insert, update, or delete).
*   *Example:* Automatically updating a record or sending a notification.
*   **Benefits:**
    *   **Reduces the manual work**.
    *   Keeps the **table synchronized**.
    *   **Tracks changes automatically**.
*   **Mechanism:** Listens for database actions (`insert`, `update`, `delete`), checks a condition, and if met, performs a predefined task (event response).

### 19. What are Integrity constraints?

*   **Definition:** A set of **predefined rules** used to **maintain the quality of information**.
*   **Purpose:** Ensures data remains **accurate, consistent, and reliable**.
*   **Function:** Act as guidelines to **protect your databases during insertion, updating, and deletion**.
*   **Types:**
    *   **Domain Constraint:** Defines **valid value for an attribute** (e.g., age must be an integer, not a string).
    *   **Not Null Constraint:** Ensures attributes **cannot have the null values**.
    *   **Entity Integrity (Primary Key Constraint):** Says that **primary key must not be null**.
    *   **Referential Integrity Constraint:** Says that **foreign key must match the primary key in the related table**.

### 20. How is pattern matching done in SQL?

*   **Process:** Searching for **specific text pattern within a column's data**.
*   **Operator Used:** The **`LIKE` operator**.
*   **Wildcard Characters:**
    *   **`%` (percent):** Matches for **zero or more characters**.
    *   **`_` (underscore/dash):** Matches for **only one character**.

### 21. What is concurrency control in database management system?

*   **Purpose:** Ensures that **multiple transactions run simultaneously without data inconsistency**.
*   Deals with the **interleaved execution of more than one transaction**.
*   **Problems:**
    *   **Read Write Problem:** Occurs when one transaction reads data that was updated by an **uncommitted transaction**.
    *   **Lost Update Problem:** Occurs when two or more transactions **modify the same data**, resulting in one update being overwritten.
*   **Mechanism:**
    *   **Lock Shared (Read Write Lock):** Allows multiple transactions but puts a lock to prevent concurrent updates.
    *   **Two-Phase Locking:** Ensures **strict ordering of log acquisition and release**.
    *   **Time Stamps:** A time in which a transaction **enters into system**.

### 22. What are the type of keys present in database management system?

Keys are attributes that **uniquely identify records** and **establish relationships** between tables.

| Key Type | Description |
| :--- | :--- |
| **Super Key** | Any set of attributes that can **uniquely identify tuples**. |
| **Candidate Key** | The **minimal set of attributes** to identify a tuple; worthy of becoming the primary key. |
| **Primary Key** | The **chosen candidate key** to uniquely identify roles; **cannot be null**. |
| **Alternate Key** | A **candidate key which is not chosen as primary key**. |
| **Foreign Key** | Refers to the **primary key of another table**; helps connect two tables. |
| **Unique Key** | Helps in determining columns uniquely; **can be null** (unlike primary key). |
| **Composite Key** | A **combination of two or more attributes**. |

### 23. What are the different levels of abstraction of DBMS?

Abstraction is **hiding the underlying details from the user to reduce complexity**.

| Level | Name | Information/Focus | Accessed By |
| :--- | :--- | :--- | :--- |
| **Lowest** | **Physical Level** | Tells **how** the data is actually stored (managing storage, indexing, backup). | Database Administrators (DBAs). |
| **Middle** | **Logical Level** | Comprises the information that is actually stored (the **what** is stored) in the form of tables. | DBAs and Developers (defining table relationship and constraint). |
| **Highest** | **View Level** | Only a **small, simplified part of actual database is viewed**. | End User (displaying data relevant to their role). |

### 24. Differentiate between two tire and three Tire architecture.

| Feature | Two-Tier Architecture | Three-Tier Architecture |
| :--- | :--- | :--- |
| **Structure** | Client and database **directly communicating**. | Application logic lives in a **middle tier** (application layer). |
| **Security** | **Less secure** (client has direct access to database). | **More secure** (users don't directly access the database). |
| **Complexity** | Very **simple and easy to build**. | Requires **more effort to build and maintain**. |
| **Ideal For** | **Small application** (e.g., contact management). | **Complex system** (e.g., web application). |
| **Type** | Client server architecture. | Web based application. |

### 25. There's a table where only one row is fully repeated write a query to find the repeated row.

*   **Goal:** To find rows where the combination of all columns (`name` and `section`) is duplicated.
*   **Query:**

```sql
Select name, section from table Group by name, section having count(*) > 1
```

*   **Logic:** The query groups the rows by the specified columns and then uses the `HAVING` clause to filter for groups where the count of occurrences is greater than one.

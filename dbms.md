only code help youtbue

Here’s a concise, theory-only summary of database **normalization up to 5NF**:

---

**Normalization**
Process of organizing data into well-structured tables to remove redundancy and avoid update, insert, and delete anomalies.

---

### 1NF (First Normal Form)

* All attributes contain **atomic (indivisible)** values.
* No repeating groups or arrays inside a single column.

### 2NF (Second Normal Form)

* Table is in 1NF.
* **No partial dependency**: every non-key attribute depends on the **whole** of every candidate key (not just part of a composite key).

### 3NF (Third Normal Form)

* Table is in 2NF.
* **No transitive dependency**: non-key attributes depend **only on candidate keys**, not on other non-key attributes.

### BCNF (Boyce–Codd Normal Form)

* Stricter version of 3NF.
* For every functional dependency X → Y, **X must be a candidate key**.

### 4NF (Fourth Normal Form)

* Table is in BCNF.
* **No multi-valued dependencies**: independent multi-valued facts are separated into different tables.
    ➡ 4NF says: If two sets of facts are independent, keep them in separate tables.
  ex : A -> BC and B,C are not dependent then split them

### 5NF (Fifth Normal Form)

* Table is in 4NF.
* **No join dependency**: table cannot be decomposed further without losing information; all data can be reconstructed from smaller tables without redundancy.
➡ 5NF says: Break tables so that no hidden “join” relationships cause duplication.

---

**Goal:** stepwise elimination of redundancy and anomalies while preserving data integrity.

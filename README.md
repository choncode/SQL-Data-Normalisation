# SQL-Data-Normalisation

## Project Summary

Using SQL to complete the following:

- Refactor a table to 1NF, 2NF and 3NF
- Implement a star schema
- Implement an ERD

<br>

## Section One

Normalise the data without mutating our original data.

### Part One

`1NF.sql`

Adhering to the below rules:
- Must have no duplicate rows
- Each cell must only contain a single value
- Each value cannot be split down further

Prints the result to a txt file called `1NF.txt`

<br>

### Part Two

`2NF.sql`

-   Table must not violate the rules set out by 1NF
-   No partial dependencies - Non-prime attributes must be fully dependant on the candidate key.

Prints the result to a txt file called `2NF.txt`

<br>

### Part Three

`3NF.sql`

Refactor to 3NF:

-   Table must not violate the rules set out by 2NF
-   No transitive dependencies - fields must be determined by the primary / composite key

Prints the result to a txt file called `3NF.txt`



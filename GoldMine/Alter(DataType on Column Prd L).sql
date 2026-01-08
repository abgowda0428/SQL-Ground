USE SalesDB;

SELECT * FROM sys.tables;

SELECT 
table_name,table_schema
FROM INFORMATION_SCHEMA.TABLES;

CREATE SCHEMA autocrat;


CREATE TABLE autocrat.emplyoee(
emp_id INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
mobile_num INT UNIQUE,
address TEXT NOT NULL,
);

ALTER TABLE autocrat.emplyoee
ALTER COLUMN mobile_num BIGINT;


SELECT TABLE_NAME,TABLE_SCHEMA
FROM INFORMATION_SCHEMA.TABLES;

INSERT INTO autocrat.emplyoee VALUES
(1,'ABHISHEK',8217665338,'HAROHALLI, SANTHEHALL,IMALUE,KOLAR'),
(2,'BHRATH',9008665366,'KOLAR, MUNESHWARE NAGAR, GANDU STREET HOUSE NO/23');

/* Error Started here the moble_num column was exceed the limit(Out of Range),
So I wanted to change the DataType of the Column & Before Changing the DataType of the Column.
I need to Identify any Constraint on the Column & I shoud Drop that Column,
Alter DataType and then I should Re-assign the Constraint */

-- To Check the Constraint Key
BEGIN;

-- 1. Identify constraint
SELECT 
tc.CONSTRAINT_NAME,
tc.CONSTRAINT_TYPE,
kcu.COLUMN_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc
LEFT JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE kcu
ON tc.CONSTRAINT_NAME = kcu.CONSTRAINT_NAME
WHERE tc.TABLE_SCHEMA = 'autocrat' AND kcu.TABLE_NAME = 'emplyoee';

-- 2. Drop constraint
ALTER TABLE autocrat.emplyoee
DROP CONSTRAINT uq_employee_mobile_num;

-- 3. Alter column
ALTER TABLE autocrat.emplyoee
ALTER COLUMN mobile_num BIGINT NOT NULL;

-- 4. Re-add constraint
ALTER TABLE autocrat.emplyoee
ADD CONSTRAINT uq_employee_mobile_num
UNIQUE (mobile_num);

COMMIT;

-- 1. Foreign Key Identification Query

-- Basic Query
SELECT fk.name
FROM sys.foreign_keys fk
WHERE fk.parent_object_id = OBJECT_ID('autocrat.emplyoee');

BEGIN;
-- 1. ADVANCE Query
SELECT
    fk.name AS fk_name,
    c.name AS column_name
FROM sys.foreign_keys fk
JOIN sys.foreign_key_columns fkc
    ON fk.object_id = fkc.constraint_object_id
JOIN sys.columns c
    ON fkc.parent_object_id = c.object_id
   AND fkc.parent_column_id = c.column_id
WHERE OBJECT_NAME(fk.parent_object_id) = 'emplyoee';

-- 2. ADVANCE Query
SELECT
    fk.name AS fk_name,
    SCHEMA_NAME(tp.schema_id) AS parent_schema,
    tp.name AS parent_table,
    cp.name AS parent_column,
    SCHEMA_NAME(tr.schema_id) AS referenced_schema,
    tr.name AS referenced_table,
    cr.name AS referenced_column
FROM sys.foreign_keys fk
JOIN sys.foreign_key_columns fkc
    ON fk.object_id = fkc.constraint_object_id
JOIN sys.tables tp
    ON fkc.parent_object_id = tp.object_id
JOIN sys.columns cp
    ON fkc.parent_object_id = cp.object_id
   AND fkc.parent_column_id = cp.column_id
JOIN sys.tables tr
    ON fkc.referenced_object_id = tr.object_id
JOIN sys.columns cr
    ON fkc.referenced_object_id = cr.object_id
   AND fkc.referenced_column_id = cr.column_id
WHERE fk.parent_object_id = OBJECT_ID('autocrat.emplyoee');

-- 2. Drop constraint
ALTER TABLE autocrat.emplyoee
DROP CONSTRAINT uq_employee_mobile_num;

-- 3. Alter column
ALTER TABLE autocrat.emplyoee
DROP CONSTRAINT fk_employee_department;

-- 4. Re-add constraint
ALTER TABLE autocrat.emplyoee
ADD CONSTRAINT fk_employee_department
FOREIGN KEY (department_id)
REFERENCES hr.departments(department_id);

COMMIT;

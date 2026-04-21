SHOW COLUMNS FROM finance_2;
ALTER TABLE finance_2
CHANGE COLUMN `ï»¿id` id INT;
SELECT *
FROM finance_1 f1
JOIN finance_2 f2
ON f1.id = f2.id;

CREATE TABLE finance_final AS
SELECT *
FROM finance_1 f1
JOIN finance_2 f2
ON f1.id = f2.id

CREATE TABLE finance_final AS
SELECT 
    f1.*,
    f2.revol_bal,
    f2.total_pymnt,
    f2.last_pymnt_d,
    f2.total_pymnt_inv,
    f2.total_rec_prncp
FROM finance_1 f1
JOIN finance_2 f2
ON f1.id = f2.id;

SELECT COUNT(*) FROM finance_final;
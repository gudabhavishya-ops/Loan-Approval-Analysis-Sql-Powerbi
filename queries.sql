-- Database Setup
create database bank;
use bank;


-- 1. Total applications
select count(*) from loans;


-- 2. Approved vs rejected
SELECT loan_status, COUNT(*)
FROM loans
GROUP BY loan_status;


-- 3. Avg income by loan status
select loan_status,round(avg(income_annum),2) as avg_income  from loans
group by loan_status;


-- 4. Avg CIBIL by loan status
select loan_status, avg(cibil_score)
from loans
group by loan_status;


-- 5. Approval rate by education
select education, 
count(*) as total_applicants,
    sum(case
        when loan_status = 'Approved' Then 1 else 0
    end) as approved,
    sum(case
        when loan_status = 'Approved' Then 1 else 0
    end)*100/count(*) as approval_rate
from loans
group by education;


-- 6. Self-employment vs approval
select self_employed, 
count(*) as total_applicants,
    sum(case
        when loan_status = 'Approved' Then 1 else 0
    end) as approved,
    sum(case
        when loan_status = 'Approved' Then 1 else 0
    end)*100/count(*) as approval_rate
from loans
group by self_employed;


-- 7. Loan amount vs dependents
select no_of_dependents,round(avg(loan_amount),2)
from loans
group by no_of_dependents
order by no_of_dependents asc;


-- 8. Top 10 highest loan amounts
select loan_id,loan_amount
from loans
order by loan_amount desc
limit 10;


-- 9. Total assets value
select 
sum(residential_assets_value+commercial_assets_value+luxury_assets_value+bank_asset_value) as total_assets
from loans;

--10. Loan-to-income ratio
select loan_id,income_annum,loan_amount,(loan_amount/income_annum ) as loan_income_ratio
from loans;


--11. CIBIL vs loan amount
select cibil_score,avg(loan_amount)
from loans
group by cibil_score
order by cibil_score;


--12. High-income rejections
select loan_id
from loans
where income_annum > 10000000
and loan_status = 'Rejected';


--13. Avg loan term by status
select avg(loan_term), loan_status
from loans
group by loan_status;


--14. Highest asset type (approved)
SELECT loan_status,
       AVG(residential_assets_value) AS avg_res,
       AVG(commercial_assets_value) AS avg_com,
       AVG(luxury_assets_value) AS avg_lux,
       AVG(bank_asset_value) AS avg_bank
FROM loans
GROUP BY loan_status;


--15. CIBIL score distribution
SELECT 
  CASE 
    WHEN cibil_score < 550 THEN 'Poor'
    WHEN cibil_score BETWEEN 550 AND 650 THEN 'Fair'
    WHEN cibil_score BETWEEN 650 AND 750 THEN 'Good'
    ELSE 'Excellent'
  END AS cibil_segment,
  COUNT(*) AS total_customers
FROM loans
GROUP BY cibil_segment;




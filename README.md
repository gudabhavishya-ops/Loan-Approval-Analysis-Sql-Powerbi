# Loan Approval Analysis Using SQL & Power BI
# Project Overview

This project analyzes loan applications using SQL for backend data exploration and Power BI for interactive dashboarding.
The goal is to understand approval patterns, identify risk factors, and uncover trends in applicant financial behavior and increase loan approvals.

# Dataset Description

Each row represents a loan application.

Key Columns:

loan_id

no_of_dependents

education

self_employed

income_annum

loan_amount

loan_term

cibil_score

residential_assets_value

commercial_assets_value

luxury_assets_value

bank_asset_value

loan_status (Approved / Rejected)

# SQL Analysis Performed
1. Total applications  
2. Approved vs rejected  
3. Avg income by loan status  
4. Avg CIBIL by loan status  
5. Approval rate by education  
6. Self-employment vs approval  
7. Loan amount vs dependents  
8. Top 10 highest loan amounts  
9. Total assets value  
10. Loan-to-income ratio  
11. CIBIL vs loan amount  
12. High-income rejections  
13. Avg loan term by status  
14. Highest asset type (approved)  
15. CIBIL score distribution  

Clck here for sql queries
sql/queries.sql

# Power BI Dashboard
KPIs

Total Loan Applications

Approval Rate

Avg CIBIL Score

Total Asset Value

Visuals Used

Approved vs Rejected Loans (Bar Chart)

CIBIL Score Segments (Poor / Fair / Good / Excellent)

Average Loan Term by Loan Status

Average CIBIL Score by Loan Status

Income vs Loan Amount (Line Chart)

Loan Amount by Dependents (Line Chart)

Top 10 Highest Loan Applicants (Table)

Loan Status Breakdown (Donut Chart)

Filters / Slicers

Education

Loan Amount Range

Income Range

CIBIL Score Range

# Key Insights

Applicants with higher CIBIL scores have a significantly higher approval probability.

Overall approval rate is 62%.

Approved loans generally have slightly longer loan terms.

Income shows weak correlation with loan amount — high income ≠ approval.

Some high-income applicants were still rejected due to poor credit scores.

Applicants with fewer dependents tend to request lower loan amounts.

# Tech Stack

SQL

Power BI

Excel / CSV


# How to Run This Project
# SQL

This project includes a SQL script queries.sql containing all analysis queries.  
Simply open the file to review the SQL logic.

# Power BI

Open the .pbix file in Power BI Desktop to explore the interactive dashboard.

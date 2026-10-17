# Invoice Approval Control Checker

A data analytics project simulating an **Internal Audit control test** on Accounts Payable invoice approvals.

## What This Project Does

Identifies invoices above ₹1,00,000 that were **paid without proper approval**, 
quantifies the financial exposure, and visualizes risk by department.

## Tools Used

| Tool | Purpose |
|---|---|
| Python (pandas, numpy) | Synthetic data generation |
| SQL (SQLite) | Control testing queries |
| Python (scipy) | Statistical significance test |
| Power BI / HTML | Risk dashboard |

## Key Finding

> **17.4% of high-value invoices (>₹1L) had no approval record —  
> statistically significant at p < 0.0001 —  
> representing ₹46.8 lakhs in financial exposure.**  
> HR department had the highest failure rate (7 invoices).

## Project Structure

## How to Run

```bash
# Step 1 — Generate data
python 1_generate_data.py

# Step 2 — Open SQL queries in DB Browser for SQLite
# Load invoices.csv → run 2_sql_queries.sql

# Step 3 — Run analysis
python 3_analysis.py
```

## Dashboard Preview

Open `audit-dashboard.html` in any browser — no installation needed.  
Includes: KPI cards · Bar chart by department · Donut approval split · 
Statistical findings · Full failure table.

## Skills Demonstrated

- Control testing (design effectiveness vs operating effectiveness)
- Statistical sampling and hypothesis testing
- SQL aggregation and filtering
- Data visualization and audit reporting

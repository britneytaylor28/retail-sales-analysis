# Retail Sales Analysis

**Author:** BritneyAnalyzes  
**Project Type:** Data Analytics Portfolio Project  
**Status:** Completed initial analysis  
**Dataset:** 30 fictional retail sales records covering January–June 2025

## Project Overview

This project explores fictional retail sales data to demonstrate foundational data analytics skills, including SQL querying, data validation, revenue and profit calculations, and communicating business insights.

## Business Questions

- Which product categories generate the most revenue?
- Which products generate the highest revenue and estimated gross profit?
- How does revenue change month to month?
- How do revenue and profit compare across regions and sales channels?
- Are there missing or invalid values in key data fields?

## Tools and Technologies

- **SQL (SQLite):** Aggregation, filtering, grouping, calculations, and data quality checks
- **CSV:** Structured dataset storage and inspection
- **GitHub:** Project documentation and version control

## Key Findings

- **Total revenue after discounts:** $2,654.90
- **Estimated gross profit:** $1,201.90
- **Estimated gross margin:** Approximately 45.3%
- **Top revenue category:** Furniture, at $1,624.00
- **Top revenue product:** Office Desk, at $814.00
- **Highest-revenue month:** June 2025, at $697.75
- **Highest-revenue region and channel combination:** East Online, at $622.50
- **Initial data quality checks:** No issues detected in the five checked categories across 30 records

## Repository Contents

| File | Description |
|---|---|
| `retail_sales.csv` | Fictional retail sales dataset |
| `analysis.sql` | SQL queries for analysis and validation |
| `FINDINGS.md` | Detailed findings, metrics, and interpretations |
| `README.md` | Project overview and summary |

## Metrics

**Revenue after discounts**

`quantity × unit_price × (1 − discount_rate)`

**Estimated gross profit**

`quantity × (unit_price × (1 − discount_rate) − unit_cost)`

## Limitations

This is a learning project based on fictional data, not actual company performance. Estimated gross profit subtracts product costs but excludes other operating expenses. The initial validation checks do not establish that every possible data quality issue is absent.

## Next Steps

- Create visualizations of monthly revenue and category performance.
- Expand data validation checks.
- Develop a dashboard to communicate findings visually.

---

*Created as part of my journey into data analytics.*

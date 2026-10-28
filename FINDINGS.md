
# Retail Sales Analysis — Findings

## Project Status

The dataset and initial SQL queries have been added to the repository. Results still need to be executed and verified.

## Questions This Analysis Will Answer

1. Which product categories generate the most revenue?
2. Which products sell the most units?
3. How does revenue change from month to month?
4. Which regions and sales channels generate the most revenue?
5. What is the estimated gross profit after discounts and product costs?

## Key Metrics

- **Revenue after discounts:** Quantity × Unit Price × (1 − Discount Rate)
- **Estimated gross profit:** Quantity × (Discounted Unit Price − Unit Cost)

## Findings

Results will be documented here after the SQL queries are run and checked.

## Limitations

- The dataset is fictional and created for practice.
- The findings do not represent a real company's performance.
- Estimated gross profit excludes other business expenses such as shipping, labor, and overhead.



### Overall Performance

- Total revenue after discounts: $2,654.90
- Estimated gross profit: $1,201.90
- Estimated gross margin: approximately 45.3%

### Revenue by Category

| Category | Revenue | Estimated Gross Profit |
|---|---:|---:|
| Furniture | $1,624.00 | $594.00 |
| Home | $419.15 | $236.15 |
| Electronics | $363.75 | $213.75 |
| Office Supplies | $248.00 | $158.00 |

### Key Insight

Furniture generated the highest revenue at $1,624.00, accounting for approximately 61.2% of total revenue. Home ranked second at $419.15. Office Supplies generated the lowest revenue at $248.00.

These findings describe fictional practice data and should not be interpreted as real-world business performance.    



### Monthly Revenue Trends

| Month | Revenue |
|---|---:|
| January 2025 | $253.00 |
| February 2025 | $378.00 |
| March 2025 | $583.45 |
| April 2025 | $394.70 |
| May 2025 | $348.00 |
| June 2025 | $697.75 |

**Key insights:**

- June had the highest monthly revenue at $697.75.
- January had the lowest monthly revenue at $253.00.
- Revenue generally increased across the six-month period, with declines in April and May.
- June revenue was approximately 176% higher than January revenue.

This dataset covers only six months, so additional data would be needed to determine whether these changes reflect a recurring seasonal pattern.


### Product Performance

| Product | Units Sold | Revenue | Estimated Gross Profit |
|---|---:|---:|---:|
| Office Desk | 4 | $814.00 | $294.00 |
| Desk Chair | 6 | $810.00 | $300.00 |
| Desk Lamp | 8 | $260.75 | $140.75 |
| Wireless Mouse | 8 | $191.25 | $95.25 |
| USB Cable | 18 | $172.50 | $118.50 |
| Water Bottle | 9 | $158.40 | $95.40 |
| Notebook | 35 | $134.80 | $82.30 |
| Pen Set | 15 | $113.20 | $75.70 |

**Key insights:**

- Office Desk generated the highest revenue at $814.00.
- Desk Chair generated $300.00 in estimated gross profit, the highest product-level total.
- Notebook sold the most units at 35, but generated $134.80 in revenue.
- Product performance differs depending on whether the metric is units sold, revenue, or estimated gross profit.

- 
### Regional and Sales Channel Performance

| Region | Channel | Order Lines | Units Sold | Revenue | Estimated Gross Profit |
|---|---|---:|---:|---:|---:|
| East | Online | 4 | 9 | $622.50 | $225.00 |
| North | Online | 4 | 8 | $468.40 | $195.40 |
| South | Online | 5 | 15 | $434.25 | $197.25 |
| North | In-Store | 3 | 9 | $298.50 | $144.50 |
| South | In-Store | 3 | 13 | $297.00 | $128.00 |
| West | Online | 5 | 20 | $257.05 | $146.05 |
| East | In-Store | 3 | 16 | $178.00 | $103.00 |
| West | In-Store | 3 | 13 | $99.20 | $62.70 |

**Key insights:**

- East Online generated the highest revenue at $622.50.
- Online sales generated $1,782.20 in revenue, compared with $872.70 for in-store sales.
- Online accounted for approximately 67.1% of total revenue.
- West In-Store generated the lowest revenue at $99.20.

These findings describe the fictional practice dataset only.


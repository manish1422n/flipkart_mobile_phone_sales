<div align="center">

<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white"/>
<img src="https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black"/>
<img src="https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white"/>
<img src="https://img.shields.io/badge/DAX-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white"/>

<br/>
<br/>

# 📱 Flipkart Mobile Phone Sales Analysis

### Descriptive Data Analysis · MySQL + Power BI

</div>

---

## 🔍 Project Overview

This project focuses on analyzing **Flipkart mobile phone sales data** to extract meaningful business insights. The analysis covers data cleaning, ETL transformation, SQL querying, and interactive Power BI visualization — enabling decision-makers to understand brand performance, pricing trends, and customer preferences at a glance.

---

## 🎯 Key Findings at a Glance

| Metric | Value |
|--------|-------|
| 🏆 Highest Avg Rating Brand | **Apple** |
| 📉 Lowest Avg Rating Brand | **Gionee** |
| 🎨 Top Sales Colour | **Black** |
| 💸 Highest Avg Discount | **POCO — 14.5%** |
| 📦 Best-Selling Model | **Apple iPhone 11 (36 units)** |
| 🌍 Dominant Sales Country | **China — 58.8%** |
| 💰 Category Leader | **Sub-Flagship — 42.9%** |

---

## 🛠️ Tools & Technologies Used

| Tool | Purpose |
|------|---------|
| **Excel** | Initial data exploration & ETL (Extract, Transform, Load) |
| **MySQL** | Querying & extracting data insights from the database |
| **Power BI Desktop** | Designing dynamic and interactive dashboards |
| **Power BI Service** | Publishing the report online |
| **DAX** | Calculating Average Selling Price by Brand |

---

## 📊 Dashboard Preview

> 🔗 [View the Live Power BI Dashboard](https://app.powerbi.com/links/cmXIAwSvRu?ctid=93fa03ea-bf2f-4179-aa6b-8adf04747ba4&pbi_source=linkShare)

The interactive Power BI dashboard includes:

- **Average Discount by Brand** — Horizontal bar chart showing POCO at #1 (14.5%)
- **Sales by Brand** — Apple dominates with ₹23M total sales
- **Sales by Country** — China accounts for 58.8% of total sales
- **Sales by Category** — Sub-Flagship leads at 42.9% (₹31M)
- **Sales by Storage** — 6GB+128GB is most popular (37.1%)
- **Average Selling Price by Brand** — DAX-powered area chart showing Apple's premium pricing
- **Highest & Lowest Sales Models** — iPhone 11 (36 units) vs HTC models (1 unit each)
- **KPI Cards** — Apple (Highest Rating), Gionee (Lowest Rating), Black (Top Color)

---

## 🗃️ Repository Structure

```
flipkart_mobile_phone_sales/
│
├── 📄 query.sql          # All MySQL queries used for data extraction
├── 📊 data_table.xlsx     # Cleaned and transformed dataset
├── 📈 flipkart_upd.pbix   # Power BI dashboard file
└── 📋 README.md           # Project documentation
```

---

## 🔬 SQL Analysis Performed

Using MySQL, the following data extractions were performed:

```sql
-- Highest average discount by brand
SELECT brand, avg(discount)
FROM flipkart_mobiles_upd
GROUP BY brand;

-- Top-selling and lowest-selling phone models
SELECT brand, model, max(quantity) as max
FROM sales_quantities
GROUP BY brand, model
ORDER BY max DESC
LIMIT 3;

-- Brand with highest vs lowest average rating
SELECT brand, avg(Rating) as highest_rating
FROM flipkart_mobiles
GROUP BY brand
ORDER BY highest_rating DESC
LIMIT 1;
```

> 📄 Full SQL script available in [`query.sql`](./query.sql)

---

## 📈 Analysis Insights

### 🛍️ Sales Performance
- **Apple** dominates total brand sales at **₹23M**, followed by Samsung (₹17M) and Realme (₹5M)
- **iPhone 11** is the single best-selling model with **36 units sold**
- **HTC** models recorded the **lowest sales** (1 unit each across Desire 630, 628, Desire 828)

### 💰 Pricing & Discounts
- **POCO** offers the highest average discount at **14.5%**
- **Motorola** is close behind at **12.8%** discount
- Apple offers a relatively **low 4.7% average discount**, reflecting its premium pricing strategy

### ⭐ Ratings
- **Apple** holds the **highest average customer rating** across all brands
- **Gionee** is rated the lowest among all listed brands

### 🌍 Geography & Categories
- **China-manufactured phones dominate** with 58.8% of total sales
- The **Sub-Flagship segment** (₹15K–30K range) captures the largest revenue share at 42.9%
- **6GB + 128GB storage** is the most popular configuration at 37.1%

---

## 📂 Data Source

> 🗂️ Dataset sourced from **[Kaggle](https://www.kaggle.com)** — Flipkart Mobile Phone Sales dataset

---

## 👤 Author

**Manish Mittal**  
Data Analyst | MySQL · Power BI · Excel · Python

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=flat&logo=linkedin&logoColor=white)](#)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=flat&logo=github&logoColor=white)](https://github.com/manish1422n)

---

<div align="center">

⭐ *If you found this project useful, please consider giving it a star!* ⭐

</div>

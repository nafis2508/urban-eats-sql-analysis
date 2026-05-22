# 🍴 SQL Business Analytics & Database Design Project | UrbanEats Café Chain

## 📌 Project Overview

UrbanEats is an end-to-end SQL business analytics and relational database design project built for a multi-branch café chain operating across multiple locations in Sydney, Australia.

This project demonstrates how structured relational databases and SQL-driven analytics can support operational decision-making in a retail hospitality environment.

The project combines:

* Relational database design
* Business-focused SQL analytics
* Operational performance analysis
* Customer behaviour analytics
* Revenue and profitability reporting
* Staff scheduling optimisation
* Branch-level operational efficiency analysis

The analysis simulates real-world café operations and demonstrates how businesses can use SQL and data analytics to improve profitability, customer retention, staffing efficiency, and operational reliability.

---

# 🧰 Tech Stack

* SQL (MySQL)
* MySQL Workbench
* Relational Database Design
* ERD Modelling
* Business Analytics
* Operational Analytics
* Business Intelligence
* Data Modelling
* Database Normalisation
* KPI Analysis

---

# 📂 Repository Structure

```bash
urban-eats-sql-analysis/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── assets/
│   ├── diagrams/
│   │   └── urban_eats_erd_diagram.png
│   │
│   └── screenshots/
│       ├── revenue_by_product_category.png
│       ├── total_revenue_by_outlet.png
│       ├── loyal_vs_onetimer_customers.png
│       ├── failed_payment_and_churn_analysis.png
│       ├── underperforming_categories_analysis.png
│       ├── product_sales_by_outlet.png
│       ├── shift_utilisation_analysis.png
│       ├── staff_capacity_by_outlet.png
│       ├── role_group_demand_analysis.png
│       ├── available_products_by_outlet.png
│       ├── reservation_reliability_analysis.png
│       └── order_to_revenue_flow_analysis.png
│
├── reports/
│   ├── urban_eats_business_report.docx
│   └── urban_eats_business_report.pdf
│
├── sql/
│   ├── schema/
│   │   └── schema.sql
│   │
│   ├── data_insertion/
│   │   └── data_insertion.sql
│   │
│   └── analysis/
│       └── business_case_analysis.sql
│
└── data/
    └── README.md
```

---

# 🗃️ Simulated Operational Dataset

The project uses a synthetic but business-realistic dataset simulating day-to-day café operations across multiple outlets.

The dataset includes:

* 3 café outlets
* 30+ customers
* 30+ menu products
* Staff and shift allocation
* Customer reservations
* Orders and payments
* Product availability by branch
* Revenue and transaction records

The operational data was intentionally designed to simulate:

* repeat vs one-time customers
* customer churn signals
* failed and refunded payments
* reservation no-shows
* staffing inefficiencies
* branch-specific menu strategies
* operational bottlenecks

---

# 🧠 Database Design & ERD

The relational database schema was designed using proper entity relationships, primary keys, foreign keys, and many-to-many junction tables.

### Core Entities

* Outlet
* Customer
* Product
* Product_Category
* Orders
* Payments
* Reservation
* Staff
* Shift

### Junction Tables

* Order_Product
* Outlet_Product
* Staff_Shift

The schema supports both transactional processing and business analytics reporting.

---

# 🧩 ERD (Entity Relationship Diagram)

![ERD](assets/diagrams/urban_eats_erd_diagram.png)

---

# 🧠 SQL Concepts Demonstrated

This project demonstrates practical SQL analytics and database engineering concepts including:

* Complex JOIN operations
* Aggregate functions
* CASE statements
* GROUP BY and HAVING clauses
* Revenue calculations
* Customer segmentation
* Operational KPI analysis
* Many-to-many relationship modelling
* Foreign key constraints
* Relational schema design
* Business rule implementation
* Business-focused SQL reporting
* Query optimisation logic

---

# 📈 Key Business Metrics Analysed

The project analyses several operational and commercial KPIs including:

* Revenue by outlet
* Revenue by product category
* Reservation completion rate
* Customer loyalty segmentation
* Failed payment analysis
* Staff utilisation percentage
* Shift efficiency
* Menu item profitability
* Product availability ratio
* Branch operational performance

---

# 📊 Business Concerns & Analytical Insights

---

# 1️⃣ Sales & Profitability Analysis

## Focus

Analyse revenue contribution across outlets and product categories to identify profitability drivers and operational gaps.

## Key Insights

* Urban Eats Central generated the highest overall revenue with balanced sales across meals, beverages, and desserts.
* Harbour performed strongly through its niche strategy focused on cold drinks and desserts.
* Campus significantly underperformed due to high cancellation rates and limited product diversity.
* Espresso-based products showed low profitability contribution compared to higher-ticket meal categories.

## Revenue by Product Category

![Revenue by Product Category](assets/screenshots/revenue_by_product_category.png)

## Revenue by Outlet

![Revenue by Outlet](assets/screenshots/total_revenue_by_outlet.png)

---

# 2️⃣ Customer Retention Analysis

## Focus

Evaluate customer loyalty, churn risk, reservation reliability, and payment behaviour.

## Key Insights

* Customer loyalty exists but is concentrated within limited product categories.
* Failed and refunded payments strongly overlap with reservation no-shows.
* Harbour achieved the strongest reservation-to-order conversion rates.
* Campus demonstrated poor customer reliability and retention performance.

## Loyal vs One-Time Customers

![Customer Retention](assets/screenshots/loyal_vs_onetimer_customers.png)

## Failed Payment & Churn Analysis

![Failed Payments](assets/screenshots/failed_payment_and_churn_analysis.png)

---

# 3️⃣ Menu Optimisation Analysis

## Focus

Identify underperforming menu items and evaluate outlet-level sales distribution.

## Key Insights

* Several products generated consistently low sales volume.
* Harbour performed strongly with desserts and cold beverages.
* Central maintained balanced menu performance.
* Campus lacked sufficient menu diversity to maximise customer demand.

## Underperforming Categories

![Menu Optimisation](assets/screenshots/underperforming_categories_analysis.png)

## Product Sales by Outlet

![Product Sales](assets/screenshots/product_sales_by_outlet.png)

---

# 4️⃣ Staff Scheduling & Performance Analysis

## Focus

Assess staffing efficiency, shift utilisation, and role allocation across outlets.

## Key Insights

* Central maintained balanced staffing coverage but showed signs of occasional overstaffing.
* Harbour required stronger barista allocation due to beverage-heavy demand.
* Campus suffered from under-utilised staffing and unstaffed shifts.
* Several staffing gaps directly impacted service reliability and revenue generation.

## Shift Utilisation Analysis

![Shift Utilisation](assets/screenshots/shift_utilisation_analysis.png)

## Staff Capacity by Outlet

![Staff Capacity](assets/screenshots/staff_capacity_by_outlet.png)

## Role Group Demand Analysis

![Role Group Demand](assets/screenshots/role_group_demand_analysis.png)

---

# 5️⃣ Branch-Level Operational Efficiency

## Focus

Evaluate operational reliability using menu availability, reservation conversion, and end-to-end revenue flow.

## Key Insights

* Central operated as the strongest overall branch with balanced operational performance.
* Harbour performed efficiently within its niche strategy.
* Campus showed operational bottlenecks despite having demand potential.
* Product availability and reservation reliability strongly influenced branch performance.

## Product Availability by Outlet

![Product Availability](assets/screenshots/available_products_by_outlet.png)

## Reservation Reliability Analysis

![Reservation Reliability](assets/screenshots/reservation_reliability_analysis.png)

## Order-to-Revenue Flow Analysis

![Order to Revenue Flow](assets/screenshots/order_to_revenue_flow_analysis.png)

---

# 💼 Business Value Delivered

This project demonstrates how SQL analytics and relational databases can support:

* Operational decision-making
* Revenue optimisation
* Customer retention strategy
* Workforce planning
* Service reliability analysis
* Menu engineering
* Branch performance monitoring
* Business intelligence reporting

The project reflects how hospitality and retail organisations can use structured analytics to improve commercial performance and operational efficiency.

---

# ⚙️ How to Run the Project

## Step 1 — Clone Repository

```bash
git clone <repository-link>
```

---

## Step 2 — Create Database

Create a new MySQL database using MySQL Workbench.

---

## Step 3 — Execute Schema Script

Run:

```sql
sql/schema/schema.sql
```

This creates all relational tables and constraints.

---

## Step 4 — Populate Operational Data

Run:

```sql
sql/data_insertion/data_insertion.sql
```

This inserts the simulated business dataset.

---

## Step 5 — Run Business Analytics Queries

Run:

```sql
sql/analysis/business_case_analysis.sql
```

This executes all business concern analyses and KPI queries.

---

# 🎯 Key Learnings

Through this project, I strengthened my skills in:

* Relational database design
* SQL analytics
* Operational KPI analysis
* Customer behaviour analysis
* Data modelling
* Business-focused reporting
* Translating business problems into SQL solutions
* Designing analytical workflows for operational decision-making

---

# 🚀 Future Enhancements

Potential future improvements include:

* Power BI dashboard integration
* Tableau visualisations
* Demand forecasting using Python
* Customer churn prediction models
* Automated reporting pipelines
* Cloud deployment using AWS RDS or Azure SQL
* Stored procedures and triggers
* Real-time operational monitoring

---

# 📑 Conclusion

UrbanEats demonstrates how relational databases and SQL analytics can be used to solve real-world operational and commercial business problems.

The project successfully combines:

* database engineering
* SQL analytics
* business intelligence
* operational analytics
* and strategic business recommendations

The analysis highlights clear operational differences between branches while providing actionable insights for improving profitability, staffing efficiency, customer retention, and service reliability.

This project reflects a practical, business-focused approach to data analytics and demonstrates industry-relevant SQL and database skills applicable to retail, hospitality, and operational analytics environments.

---

# 👨‍💻 Author

### Muntasir Md Nafis

Business Analytics graduate with a Computer Science and Engineering background specialising in SQL analytics, operational analytics, and business intelligence.

### Areas of Interest

* Data Analytics
* Business Intelligence
* SQL Analytics
* Operational Analytics
* Predictive Analytics
* Retail & Customer Analytics
* Data Visualisation
* Business Reporting

GitHub: https://github.com/nafis2508

---

# 📜 License

This project is licensed under the MIT License.
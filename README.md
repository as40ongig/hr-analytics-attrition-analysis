📊 Employee Attrition & Workforce Risk Analysis
📌 Project Overview

This project analyzes employee attrition patterns to identify high-risk workforce segments and provide actionable business recommendations.

The analysis combines Python, SQL, and Power BI to perform end-to-end data analytics — from data cleaning to dashboard-driven insights.

Dataset: IBM HR Analytics Employee Attrition Dataset
Source (Kaggle): https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset

Total Employees Analyzed: 1470

🎯 Business Objective

To identify key drivers of employee turnover and highlight high-risk employee segments to support strategic retention planning.

🛠 Tools & Technologies

Python (Pandas) – Data cleaning & feature engineering

MySQL – Analytical querying & KPI extraction

Power BI – Interactive dashboard & visualization

GitHub – Version control & project documentation

🔎 Analysis Approach
1️⃣ Data Cleaning (Python)

Checked for missing values & duplicates

Removed constant/unnecessary columns

Standardized column names for SQL compatibility

Created derived features:

SalarySlab (Low / Medium / High)

ExperienceGroup (0–2, 2–5, 5+ years)

2️⃣ SQL Analysis

Performed structured analysis including:

Overall attrition rate calculation

Department-level attrition comparison

Salary-based attrition segmentation

Experience-based attrition analysis

High-risk combination analysis (Department + Salary)

3️⃣ Dashboard Development (Power BI)

Created an interactive dashboard featuring:

KPI cards (Total Employees, Attrition Rate, Avg Income, etc.)

Attrition by Department

Attrition by Salary Slab

Attrition by Experience Group

Risk segmentation matrix

Business insights & recommendations

📊 Key Insights

Overall attrition rate: 16.12% (slightly above commonly observed corporate turnover levels of 10–15%)

Highest department attrition: Sales (20.63%)

Highest risk segment: Sales + Low Salary (41.18%)

Early tenure (0–2 years) attrition: 34.88%

The analysis indicates that early-career employees in performance-driven roles with lower compensation are at the highest risk of leaving.

💡 Business Recommendations

Reassess compensation structure for entry-level Sales roles

Strengthen onboarding & mentorship programs during the first 2 years

Monitor workload and target pressure within the Sales department

Track high-risk segments through quarterly attrition dashboards

📷 Dashboard Preview

Add your dashboard screenshot below:

![Dashboard Preview](dashboard_screenshot.png)
📁 Repository Structure
HR-Analytics-Project/
│
├── cleaned_hr_data.csv
├── hr_data_cleaning.ipynb
├── hr_analysis.sql
├── HR_Analytics_Dashboard.pbix
├── dashboard_screenshot.png
└── README.md
🚀 Project Value

This project demonstrates:

End-to-end analytics workflow

SQL-based business analysis

DAX measure creation

Dashboard storytelling

Business-oriented thinking

👨‍💻 Author

Akshay Sharma
Aspiring Data Analyst | SQL | Python | Power BI

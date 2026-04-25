# IKEA Value Strategy Analysis 🇸🇪

## 📌 Project Overview
This project analyzes IKEA's product portfolio using SQL and Tableau to identify "Value for Money" opportunities. I've categorized products based on price-to-rating ratios to define market positioning.

## 📁 Repository Structure
* [📊 Tableau Dashboard](./Ikea-Kpi_Dashboard.twb): Interactive visualization file.
* [💻 SQL Queries](./ikea_queries.sql): Clean SQL scripts used for data transformation.
* [🖼️ Dashboard Screenshot](./Ikea-Kpi_Dashboard.png): Static view of the final analysis.

## 🛠️ Key Insights & Methodology
* **Data Transformation:** Applied `SPLIT_PART` for series cleaning and `NULLIF` to handle rating inconsistencies.
* **Segment Analysis:** Products were segmented into Economic, Mid-Range, and Premium using custom `CASE` logic.
* **Efficiency Metric:** Created a "Price Rate" calculated field to find products with high ratings at lower price points.

## 📊 Dashboard Preview
![IKEA Dashboard](Ikea_Kpi_Dashboard.png)

*If the image above doesn't load, please check the [Ikea-Kpi_Dashboard.png](./Ikea_Kpi_Dashboard.png) file directly.*

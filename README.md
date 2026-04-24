🇸🇪 IKEA Product Portfolio & Value Strategy Analysis

📌 Project Overview
This project focuses on analyzing the IKEA product dataset to evaluate pricing strategies, customer satisfaction (ratings), and the "Value for Money" (VFM) proposition. Using advanced SQL techniques, I transformed raw product data into a Dynamic Flat Table designed to power interactive BI dashboards.

🎯 Business Key Performance Indicators (KPIs)
The analysis is structured around four primary objectives:

Price Segmentation: Categorizing products into Economy, Mid-Range, and Premium tiers.

Value for Money (VFM) Scoring: Calculating the ratio between price and customer rating to identify "high-value" versus "overpriced" products.

Series Performance: Extracting and analyzing iconic IKEA series (e.g., HEMNES, MALM, BILLY) to measure brand loyalty.

Omnichannel Availability: Assessing the distribution of online-sellable products across categories.

🛠️ Technical Implementation (SQL)
The core of this project is a comprehensive SQL query that prepares the data for visualization. Key techniques used include:

Conditional Logic: CASE WHEN statements for multi-tier segmentation.

String Manipulation: SPLIT_PART to isolate product series from full names.

Error Handling: Using NULLIF to prevent division-by-zero errors in VFM calculations.

Data Modeling: Creating a "Flat Table" architecture to ensure seamless filter interaction in dashboard tools.

Key Query Snippet:
SQL
SELECT 
    main_category,
    product_name,
    SPLIT_PART(product_name, ' ', 1) AS series,
    price,
    product_rating,
    CASE 
        WHEN price < 500 THEN 'Economy'
        WHEN price BETWEEN 500 AND 2000 THEN 'Mid-Range'
        ELSE 'Premium'
    END AS price_segment,
    CASE 
        WHEN (price / NULLIF(product_rating, 0)) < 100 THEN 'High Value'
        WHEN (price / NULLIF(product_rating, 0)) BETWEEN 100 AND 500 THEN 'Good Value'
        ELSE 'Lower Value'
    END AS value_score
FROM ikea;
📊 Dashboard Strategy
The output of the SQL analysis is designed to support the following visualizations:

Donut Chart: Distribution of products across Price Segments.

Scatter Plot: Price vs. Rating to identify the "Sweet Spot" products.

Heatmap: Value Score density by Category.

📁 Repository Structure
queries/: Contains the master SQL scripts for data processing.

data/: Sample dataset or links to the raw data source.

results/: Exported CSV files and analysis summaries.

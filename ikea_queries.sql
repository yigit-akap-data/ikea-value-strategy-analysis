-- Product Mix KPI
SELECT
	product_name,
	main_category,
	SPLIT_PART(product_type,' ', 1) as product_type,
	price,
	CASE
		WHEN price < 500 THEN 'Economic'
		WHEN price BETWEEN 500 AND 2000 THEN 'Mid-Range'
		ELSE 'Premium'
		END as price_segment,
	CASE
		WHEN price / product_rating < 100 THEN 'High-Value'
		WHEN price / product_rating BETWEEN 100 AND 500 THEN 'Good-Value'
		ELSE 'Lower-Value'
	END as price_rate,
	product_rating
FROM ikea

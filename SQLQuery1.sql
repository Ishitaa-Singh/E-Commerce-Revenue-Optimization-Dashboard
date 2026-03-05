

select * from [dbo].[indian_e_commerce]

--This SQL query provides a foundational analysis of regional sales performance
SELECT 
  zone,
  SUM(revenue) AS regional_revenue,
  AVG(final_price) AS avg_final_price,
  COUNT(*) AS order_count,
  AVG(discount_percent) AS avg_disc_pct,
  SUM(revenue) / COUNT(*) AS revenue_per_order
FROM [dbo].[indian_e_commerce]
GROUP BY zone
ORDER BY regional_revenue DESC;





--The query computes month-over-month (MoM) revenue growth for each category 

SELECT 
  order_date AS Date, 
  category AS Category, 
  SUM(revenue) AS Revenue,
  LAG(SUM(revenue)) OVER (PARTITION BY category ORDER BY order_date) AS prev_revenue,
  (SUM(revenue) - LAG(SUM(revenue)) OVER (PARTITION BY category ORDER BY order_date)) 
    / LAG(SUM(revenue)) OVER (PARTITION BY category ORDER BY order_date) * 100 AS growth_pct
FROM [dbo].[indian_e_commerce]
GROUP BY order_date, category
ORDER BY category, order_date;




--This CTE ranks categories by total revenue and returns only the top 5 performers.
with Category_ranks as
( select category,
sum(revenue)as Total_revenue,
ROW_NUMBER() over(order by sum(revenue) desc) as rank
from  [dbo].[indian_e_commerce]
group by category
)

select * from Category_ranks where rank<=5;


--zone vise what products are in demand and generate what revenue
SELECT 
  zone,
  SUM(CASE WHEN category = 'Electronics' THEN revenue ELSE 0 END) AS [Electronics],
  SUM(CASE WHEN category = 'Fashion' THEN revenue ELSE 0 END) AS [Fashion],
  SUM(CASE WHEN category = 'Sports & Fitness' THEN revenue ELSE 0 END) AS [Sport & Fitness],
  SUM(CASE WHEN category = 'Grocery Essentials' THEN revenue ELSE 0 END) AS [Grocery Essentials],
  SUM(CASE WHEN category = 'Footwear' THEN revenue ELSE 0 END) AS [Footwear],
  SUM(CASE WHEN category = 'Home & Living' THEN revenue ELSE 0 END) AS [Home & Living],
  SUM(CASE WHEN category = 'Beauty & Personal Care' THEN revenue ELSE 0 END) AS [Beauty & Personal Care],
  SUM(CASE WHEN category = 'Premium Lifestyle' THEN revenue ELSE 0 END) AS[ Premium Lifestyle],
  SUM(revenue) AS Total
FROM [dbo].[indian_e_commerce]
GROUP BY zone;




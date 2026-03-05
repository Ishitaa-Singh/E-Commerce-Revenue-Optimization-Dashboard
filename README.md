# E-Commerce-Revenue-Optimization-Dashboard
Interactive analytics dashboard analyzing Indian e-commerce sales data using Power BI, SQL, and Python. Key Features - MoM Growth &amp; AOV KPIs with dynamic slicers (Date/Zone/Category) - Category Performance Matrix identifying top revenue drivers - Price Elasticity Analysis (₹400-700 sweet spot visualization) - Zone-wise Pivot Tables via SQL . 



This dataset contains Indian e-commerce order data spanning 36 months (e.g., from 2023-01-31 to later dates), with columns like Order_ID, Date, State, Region, Category, Segment, Gender, Age, List_Price, GMV, Selling_Price, Discount_Percent, Revenue, Occasion, Shipping_Cost_Segment, and Discount_Segment.

#Project Methodology

1. Data Acquisition & Cleaning 🧹

✅ Imported indian_ecommerce dataset (89K orders, ₹125Cr revenue)

✅ Python (pandas): Removed nulls, standardized categories, fixed date formats  
✅ SQL: Validated data integrity, checked for duplicates
✅ Exported cleaned CSV for Power BI analysis



2. Exploratory Data Analysis (EDA) 🔍

✅ Correlation Heatmap: final_price (0.68) → revenue (strongest driver)

✅ Category Performance Matrix: Fashion/Electronics = 63% revenue

✅ Python Price Elasticity: Identified ₹400-700 optimal pricing zone

✅ SQL Zone-wise revenue pivots for regional insights



3. SQL Pivot Analysis 📊

✅ Zone-Category Revenue Matrix (CASE WHEN queries with [] brackets)

✅ Top performers: West zone Fashion (₹15.6Cr), Electronics (₹18.2Cr)

✅ 80/20 validation: Top 2 categories drive 63% total revenue

✅ Export results for executive reporting



4. Power BI Dashboard Development 🎨

✅ Date Table creation (CALENDAR + relationships)

✅ KPI Cards: Total Revenue, AOV (₹1,404), MoM Growth (+15%)

✅ Advanced Visuals:
   ├─ Treemap: Category revenue hierarchy
   ├─ Bubble Chart: Price vs Revenue (size=volume)  
   └─ Line Chart: Revenue trend by zone

✅ DAX Measures: MoM Growth, High Value Customers (1,250 VIPs)

✅ Slicers: Date/Zone/Gender/Category (fully interactive)



5. Advanced Analytics 🎯

✅ DAX Implementation:
   ├─ AOV = DIVIDE([Total Revenue], [Total Orders], 0)
   ├─ MoM Growth = DATEADD(Date[-1 month]) time intelligence
   └─ High Value Customers = DISTINCTCOUNT(customer_id > ₹50K)

✅ Price Sweet Spot: Bubble chart cluster analysis (₹400-700)

✅ VIP Segmentation: 2.5% customers = high lifetime value



6. Business Recommendations 💡

✅ Category Strategy: 80% budget → Fashion/Electronics
✅ Pricing Strategy: 60% inventory → ₹400-700 range  
✅ Zone Focus: West zone expansion (52% revenue share)

✅ VIP Program: Target 1,250 high-value customers

✅ Projected Impact: +₹20Cr revenue opportunity

#Dashboard preview
<img width="892" height="508" alt="Image" src="https://github.com/user-attachments/assets/dd2607b0-debb-4b48-8b2d-e91bb0dae723" />

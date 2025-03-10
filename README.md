# Olist Store (E-Commerce) Analysis 🚀



## 1. Overview 🏷️
The **Olist Store Analysis** project is a comprehensive exploration of the e-commerce environment on the Olist platform. We aim to identify and understand critical performance indicators and customer purchasing behaviors by examining multiple datasets—such as orders, customers, payments, products, and reviews. This integrated data provides a holistic view of how customers interact with the platform, how payments are distributed across weekdays and weekends, and how delivery times and review scores interrelate.

---

## 2. Tools 🛠️
- **Excel**: Data cleaning, exploratory analysis, quick charts  
- **Power BI**: Interactive dashboards, data modeling, advanced visualizations  
- **Tableau** (optional): Additional data visualization and dashboarding  
- **MySQL**: Data extraction, transformation, and querying  

---

## 3. Workflow 🔄
1. **Data Collection**: Gathered nine CSV files containing orders, customers, payments, products, etc.  
2. **Data Cleaning & Preparation**:  
   - Removed duplicates and irrelevant columns  
   - Handled missing or inconsistent data  
   - Formatted date/time fields for easier analysis  
3. **Data Modeling & Exploration**:  
   - Merged datasets on keys (e.g., `order_id`, `customer_id`)  
   - Performed exploratory data analysis for trends, outliers, and correlations  
4. **Dashboard Creation**:  
   - Built KPI visualizations in Excel, Power BI, and Tableau  
   - Created interactive charts and tables for in-depth insights  
5. **Insights & Recommendations**:  
   - Analyzed KPIs (see below)  
   - Proposed targeted strategies and action items for improvement  

---

## 4. KPI Insights 📊

### 4.1 Weekday vs. Weekend Payment Statistics
- **Total Payments**: \$16.01M  
- **Weekend Payments**: \$3.64M (~23%)  
- **Weekday Payments**: \$12.37M (~77%)  
**Insight**: While weekdays dominate, weekend promotions could further boost revenue.

### 4.2 Number of Orders by Review Score & Payment Type
- **Highest Review Score “5”**: 314,348 orders  
- **Highest Credit Card Payments**: 76,600  
**Insight**: High review scores correlate with credit card usage. Address low-rated orders (score “2”) to improve satisfaction.

### 4.3 Avg Delivery Days for Pet Shop Category
- **Average Delivery Time**: 11 days  
- **High Satisfaction**: 3,575 reviews scoring 5 on the 8th day  
**Insight**: Pet shop category meets expectations; further optimization can reduce delivery times.

### 4.4 Avg Price & Payments for São Paulo City
- **Avg Price**: \$109.63  
- **Avg Payment**: \$135.79  
**Insight**: Both metrics are on the rise yearly. São Paulo is a high-potential market.

### 4.5 Relationship: Shipping Days & Review Scores
- **Metric**: `(order_delivered_customer_date) - (order_purchase_timestamp)`  
**Insight**: Faster shipping generally leads to higher review scores, highlighting the importance of efficient logistics.

---

## 5. Dashboard 📈
 
> **Screenshot**:  
> ![Olist Store Dashboard]![Screenshot (267)](https://github.com/user-attachments/assets/d62fd75c-e1ef-4a7d-87f5-df4c5dc18a12)


These dashboards offer a real-time, interactive view of KPIs, making it easier for stakeholders to monitor performance and identify opportunities.

---

## 6. Scope 🌐
- **Business Insights**: Identify sales trends, optimize marketing strategies, and enhance customer satisfaction  
- **Logistics Optimization**: Improve delivery times, reduce shipping costs, and maintain product quality  
- **Product & Pricing Strategy**: Align pricing and payment options with customer preferences  

---

## 7. Challenges & Solutions 🛑✅
1. **Data Quality Issues**  
   - *Challenge*: Missing values, inconsistent dates, and duplicates  
   - *Solution*: Employed data cleaning techniques, standardized date formats, and removed duplicates  
2. **Large Data Volume**  
   - *Challenge*: Handling multiple, large CSV files  
   - *Solution*: Used SQL queries and Power BI data modeling to improve performance  
3. **Complex Relationships**  
   - *Challenge*: Merging multiple tables (orders, products, reviews, etc.)  
   - *Solution*: Defined clear relationships and keys within Power BI  
4. **Dashboard Performance**  
   - *Challenge*: Slower loading times for numerous visuals  
   - *Solution*: Optimized data model, minimized visuals, and used measures effectively  

---

## 8. Recommendations 💡
1. **Promote Weekend Sales**: Launch targeted discounts or flash sales to capture more weekend revenue  
2. **Improve Low Review Scores**: Investigate and resolve product quality or delivery issues leading to low ratings  
3. **Enhance Delivery Efficiency**: Reduce shipping days to improve customer satisfaction and loyalty  
4. **Focus on São Paulo**: Strengthen marketing and logistics efforts in this high-spend region  
5. **Continuous Feedback Loop**: Monitor reviews regularly and adapt strategies to stay competitive  

---

## 9. Conclusion 🏁
The **Olist Store Analysis** project demonstrates the substantial impact data analytics can have on refining an e-commerce operation. By delving into diverse data sources—orders, payments, customer reviews, and more—we’ve identified patterns that illuminate where Olist excels and where it can improve. We observed that payment activity spikes on weekdays, but strategic weekend promotions could balance revenue streams. Additionally, timely deliveries and higher product quality directly correlate with better review scores, underscoring the need for streamlined logistics.



---

## 10. Team Members 👥
- 👤 **Bhumireddy Siva Rama Krishna Reddy**  
- 👤 **Vikas K S**  
- 👤 **Sagar Shriram Wankhede**  
- 👤 **Devarapaga Revathi**  
- 👤 **Vaishnavi Bhanuvalli**  

---

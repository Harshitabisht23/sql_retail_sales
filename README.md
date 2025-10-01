# Retail Sales  Analysis  SQL Project

# Project Overview

**Project Tittle : Retail  Sales Analysis**
**Level :  Beginner**
**Database : retail_sales**

This project is designed to demonstrate SQL skills and techniques typically used by data analysts to explore, clean, and analyze retail sales data. The project involves setting up a retail sales database, performing exploratory data analysis (EDA), and answering specific business questions through SQL queries. This project is ideal for those who are starting their journey in data analysis and want to build a solid foundation in SQL.

# **Objectives**

**1. Set up a retail sales database: Create and populate a retail sales database with the provided sales data.**

**2.Data Cleaning: Identify and remove any records with missing or null values.**

**3. Exploratory Data Analysis (EDA): Perform basic exploratory data analysis to understand the dataset.**

**4 .Business Analysis: Use SQL to answer specific business questions and derive insights from the sales data.**

# **Project Structure**
1. Database Setup

**Database Creation: The project starts by creating a database named retail_sales.**


**Table Creation: A table named retail_table is created to store the sales data. The table structure includes columns for: Transaction ID ,Sale Date , Sale Time , Customer ID , Gender , Age , Product Category , Quantity Sold , Price per Unit
,Cost of Goods Sold (COGS),Total Sale Amount.
<img width="384" height="401" alt="image" src="https://github.com/user-attachments/assets/dc770eeb-65bb-45d9-b221-8e28beebca94" />


# **2. Data Exploration & Cleaning**
Record Count: Determine the total number of records in the dataset.
Customer Count: Find out how many unique customers are in the dataset.
Category Count: Identify all unique product categories in the dataset.
Null Value Check: Check for any null values in the dataset and delete records with missing data.

<img width="567" height="178" alt="image" src="https://github.com/user-attachments/assets/df2311bd-3c0e-48e3-9bd2-2b8af020dc55" />

# **3. Data Analysis & Findings**
The following SQL queries were developed to answer specific business questions:

**1. Write a SQL query to retrieve all columns for sales made on '2022-11-05:**

<img width="349" height="63" alt="image" src="https://github.com/user-attachments/assets/35be1dd8-b844-4c7c-ab6d-c155426754c1" />


**2. Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:**

<img width="881" height="93" alt="image" src="https://github.com/user-attachments/assets/4ac521b3-ba06-4cbd-badd-c9b80aa9f88a" />


**3. Write a SQL query to calculate the total sales (total_sale) for each category.:**
<img width="504" height="114" alt="image" src="https://github.com/user-attachments/assets/fa064640-5e1a-4a06-9d53-793e12b1847e" />

**4.Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.:**
<img width="356" height="106" alt="image" src="https://github.com/user-attachments/assets/d1e75e99-3d3b-41f8-875d-119b794fb227" />

**5.Write a SQL query to find all transactions where the total_sale is greater than 1000.:**

<img width="320" height="94" alt="image" src="https://github.com/user-attachments/assets/82106fe1-1f8a-4774-bc58-a42fb9670e98" />


**6.Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.:**
<img width="459" height="121" alt="image" src="https://github.com/user-attachments/assets/50ebc1db-2e18-4123-9e6b-6c58644b6f11" />


**7.Write a SQL query to calculate the average sale for each month. Find out best selling month in each year:**
<img width="514" height="211" alt="image" src="https://github.com/user-attachments/assets/a75967ac-f3c4-4369-b411-d16670dc08ae" />


<img width="616" height="307" alt="image" src="https://github.com/user-attachments/assets/b149df87-65ab-4bfa-8da1-42299fecd056" />


**8.Write a SQL query to find the top 5 customers based on the highest total sales:**

<img width="421" height="193" alt="image" src="https://github.com/user-attachments/assets/fed2433c-fd45-4736-94c0-a578ebc6b538" />


**9.Write a SQL query to find the number of unique customers who purchased items from each category.:**
<img width="492" height="104" alt="image" src="https://github.com/user-attachments/assets/9497ce7f-90a3-4334-9a06-175f9a8515ef" />



**10.Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17):**
<img width="692" height="249" alt="image" src="https://github.com/user-attachments/assets/efcaf3c3-7b94-458a-9c01-0b172f4361c4" />



# **Findings**
Customer Demographics: The dataset includes customers from various age groups, with sales distributed across different categories such as Clothing and Beauty.
High-Value Transactions: Several transactions had a total sale amount greater than 1000, indicating premium purchases.
Sales Trends: Monthly analysis shows variations in sales, helping identify peak seasons.
Customer Insights: The analysis identifies the top-spending customers and the most popular product categories.
# **Reports**
Sales Summary: A detailed report summarizing total sales, customer demographics, and category performance.
Trend Analysis: Insights into sales trends across different months and shifts.
Customer Insights: Reports on top customers and unique customer counts per category.
# **Conclusion**
This project serves as a comprehensive introduction to SQL for data analysts, covering database setup, data cleaning, exploratory data analysis, and business-driven SQL queries. The findings from this project can help drive business decisions by understanding sales patterns, customer behavior, and product performance.















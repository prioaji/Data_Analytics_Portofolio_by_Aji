# Grocery Sales Dasboard
<p> 
  Dashboard is a display of visualized data to give digestable information for stakeholder. Dashboard usually use metrics that important for top level management an related to any fields. In this case, dashboard for sales will contains at least gross sales, profit, margin, and total product sales. After analysing and gain insight, there is a chance to add more metrics if necessary for stakeholder. This project's objective is to make dashboard with these sistematic steps : 
</p>

  1. Defining Bussines Needs or Problems
  2. Prepare, Explore, & Clean Data
  3. Tranform Data
  4. Analyse 
  5. Sharing
  6. Act
<p>
  Interactive Dashboard here : <a href="https://www.kaggle.com/datasets/agatii/total-sale-2018-yearly-data-of-grocery-shop">Grocery Sales Dashboard</a>
</p>

<img src="https://github.com/prioaji/Grocery_Sales_Dashboard_by_Aji/blob/main/Dashboard%201%20(1).png" alt="preview">
<hr>

## 1. Defining Bussines Needs or Problems
<p>
A grocery in Polland needs to monitor their sale so they can make sale strategy and improvement base on data. They have transaction records from 2018. Owner of grocery want to know these metrics :
</p>
  <ol type = "a">
    <li>Total or particular gross sales and net profit </li>
    <li>Product sale by category </li>
    <li>Highest and lowest product sold </li>
    <li>Average stock level </li>
  </ol>

## 2. Data Preparing, Exploring, & Cleaning

### 2.1 Data Preparation
<p>
  Sales Grocery datasets accessed then dowloaded from Kaggle <a href="https://www.kaggle.com/datasets/agatii/total-sale-2018-yearly-data-of-grocery-shop">Data Source</a> and contains 3 table including : daily sale, sell, and product rotation. This data will be explored and cleaned with SQL in BigQueries. Analyse and sharing will be conducted in Tableau.
</p>

### 2.2 Data Exploration
<p>
  The exploration will be executed with steps below : 
</p>
<ol type = "a">
  <li>Initially, exploration performed on metadata to understand every table and fields inside</li>
  <li>Focuss of the exploration is to identifiy duplicate, null, formating, and outliers</li>
  <li>Exploring data use Query <b>Data Exploration</b> in the sql file above </li>
  <li>The result of exploration then cleaned and transformed with Query <b>Data Transformation</b> above</li>
</ol>
  Results of Exploration is below : 
<br>
<table>
 <caption>Summary of Data Explotation</caption>
 <tr>
   <th>Dataset</th>
   <th>Null</th>
   <th>Duplicate</th>
   <th>Inconsistency</th>
   <th>Note</th>
 </tr>
 <tr>
   <td>day sell</td>
   <td>NO</td>
   <td>NO</td>
   <td>YES</td>
   <td>NOT USED</td>
 </tr>
 <tr>
   <td>sell</td>
   <td>NO</td>
   <td>NO</td>
   <td>NO</td>
   <td>USED</td>
 </tr>
 <tr>
   <td>rotation</td>
   <td>YES</td>
   <td>NO</td>
   <td>YES</td>
   <td>USED</td>
 </tr>
</table>

<ol type ="a">
 <li> <b>day_sale</b> table will use column Date as a primary key. There is no duplicate or null. The changes needed is in fields name and date format. That will be done in Data Cleaning later.</li>
 <li> <b>sell</b> table can only has foreign key (Date, Pkod). The changes needed is in fields name and date format. Pkod (product code) has 5277 unique value, can be compared to other table.</li>
 <li> <b>rotation</b> table has no duplication but has null that has to be replaced with 0 AS FLOAT. Pkod count is 16294 (bigger than 'sell' table), it is caused by no sale in some product.</li>
 <li> <b>day_sale</b> gross revenue compared to <b>sell</b> to check its consistency, the result is that both of gross sale has different value so the dataset will be used is only 'sell'  </li>
<ol><br>
  
### 2.3 Data Cleaning
<p>
  Data Cleaning will be conducted together with transformation below.
</p>

## 3. Data Manipulating
<p>
  Data transformation process that has been done, use <b>Data Transformation</b> sql file above. The query is used to do these transformation.
  <ol type="a">
    <li>Change field name from Polish to English so it will easier to understand by many viewer.</li>
    <li>Use JOIN and nesting function to fulfill missing value with foreign key.</li>
    <li>Use CAST and COALESE to replace null with 0.</li>
    <li>Use DISTINT to make sure no duplication.</li>
  </ol>
</p>

## 4. Analyse
<p>
  With limited data, analysis is covered for only 1 year. Metrics can be analysed are total gross sale, total profit, total product sale, and inventory turnover. For better understanding, we classified product into 3 group : fast, moderate, slow. Higher product sale is more fast its rotation. Analysis and visualize is done using Tableau.
  There are several findings after analysing :
  <ol type="a">
    <li>In year time frame, product sale reach its peak in the middle and the end of the year.</li>
    <li>Profit margin is good enough for retail bussines.</li>
    <li>Inventory turnover is so low. Ordering product should be decreased to reach warehouse eficiency without worrying about lost sell.</li>
    <li>There are many product that has low selling or even no selling that should be evaluated.</li>
  </ol>
</p>

## 5. Sharing
<p>
  Visualization can be seen in this Tableau <a href="https://public.tableau.com/shared/7DSB2KZSF?:display_count=n&:origin=viz_share_link">Grocery Sales Dashboard</a>
</p>
 
## 6. Act
There are several recomendation after analyse and sharing :
<ol type = "a">
  <li>Reduce product order to decrease inventory level.</li>
  <li>Evaluate the low selling product and decrease stock of that product.</li>
  <li>Evaluate the data collection process because current data has low integrity.</li>
</ol>

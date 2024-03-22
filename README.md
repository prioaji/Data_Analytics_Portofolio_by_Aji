# Grocery Sales Dasboard
<p> 
  Dashboard is a display of integrated data that visualized to give digestable information to stakeholder. Dashboard usually use metrics that important for top level management an related to any fields. In this case, dashboard for sales will contains at least gross sales, net sales, margin, and total product sales. After analysing and gain insight, there is a chance to add more metrics if necessary for stake holder. This project's objective is to make dashboard with these sistematic steps : 
</p>

  1. Defining Bussines Needs or Problems
  2. Data Preparing & Cleaning
  3. Data Manipulating
  4. Analyse 
  5. Sharing
  6. Act  
<hr>

## 1. Defining Bussines Needs or Problems
<p>
A grocery in Polland needs to monitor their sale so they can make sale strategy and improvement base on data. They have transaction records from 2018. Owner of grocery want to know these metrics :
</p>
  <ol type = "a">
    <li>Total or particular gross revenue and net provit per month </li>
    <li>Product sold by category </li>
    <li>Hihest and lowest product sold </li>
    <li>Average stock level </li>
  </ol>

## 2. Data Preparing, Exploring, & Cleaning
### 2.1 Data Preparing
<p>
  Sales Grocery datasets accessed then dowloaded from Kaggle and contains 3 table including : daily sale, product rotation, and all selling. This data will be explored and cleaned with SQL in BigQueries. Analyse and sharing will be conducted in Tableau. 
</p>

### 2.2 Data Exploring
<p>
  The exploration will be executed with steps below : 
<ol type = "a">
  <li>Initially, exploration performed on metadata to understand every table and fields inside</li> <br>
  <li>Focuss of the exploration is to identifiy duplicate, null, formating, and outliers</li> <br>
  <li>Exploring data use Query **Data Exploration** </li> <br> 
  <li>The result of exploration then cleaned with Query **Data Cleaning**</li> <br>
</ol>
<br>
Results of Exploration is below : 
<ol type ="a">
  <li> <b>day_sale</b> table will use column Date as a primary key. There is no duplicate or null. The changes needed is in fields name and date format. That will be done in Data Cleaning later.</li> <br>
  <li> <b>sell</b> table can only has foreign key (Date, Pkod). The changes needed is in fields name and date format. Pkod (product code) has 5277 unique value, can be compared to other table.</li> <br>
  <li> <b>rotation</b> table has no duplication but has null. Pkod count is 16294 (bigger than 'sell' table), it is caused by no sale in some product.</li> <br>
  <li> <b>day_sale</b> gross revenue compared to <b>sell</b> to check its consistency, result is  </li> <br>
  <li> </li>
<ol>
</p>
  
### 2.3 Data Cleaning
**day_sale** table will use column Date as a primary key and Pkod (product code) as a foreign key. <br>
      result 

## Data Manipulating
## Analyse
## Sharing
## Act





_Sales Dasboard_
# Sales Dasboard
## Sales Dasboard
>Dashboard is a display contains visualized metrics that related to a specified case/work so stakeholder can read data easily


![Screenshot of a comment on a GitHub issue showing an image, added in the Markdown, of an Octocat smiling and raising a tentacle.](https://media.licdn.com/dms/image/D5622AQH1_PNwOc66Fg/feedshare-shrink_2048_1536/0/1709649572913?e=1714003200&v=beta&t=rK9KrPEXBglZYYRD8iybeXnwhozcrs88w-F2lcT0u8c)

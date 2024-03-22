# Grocery Sales Dasboard
<p> Dashboard is a display of integrated data that visualized to give digestable information to stakeholder. Dashboard usually use metrics that important for top level management an related to any fields. For example, dashboard for sales at least contains gross sales, net sales, margin, and total product sales. This project's objective is to make dashboard with these sistematic steps : <br>

  1. Defining Bussines Needs or Problems
  2. Data Preparing & Cleaning
  3. Data Manipulating
  4. Analyse 
  5. Sharing
  6. Act

## 1. Defining Bussines Needs or Problems <br>
## 2. Data Preparing, Exploring, & Cleaning
### 2.1 Data Preparing
Sales Grocery datasets accessed then dowloaded from Kaggle and contains 3 table including : daily sale, product rotation, and all selling. This data will be explored and cleaned with SQL in BigQueries. Analyse and sharing will be conducted in Tableau. <br>
### 2.2 Data Exploring
The exploration will be executed with steps below :
  a. Initially, exploration performed on metadata to understand every table and fields inside 
  b. Focuss of the exploration is to identifiy duplicate, null, formating, and outliers
  c. Exploring data use Query **Data Exploration**
  d. The result of exploration then cleaned with Query **Data Cleaning**
Results of Exploration is below :
  a. **day_sale** table will use column Date as a primary key. There is no duplicate or null. The changes needed is in fields name and date format. that will be done in Data Cleaning later.
  b. **sell** table can only has foreign key (Date, Pkod). The changes needed is in fields name and date format. Pkod (product code) has 5277 unique value, can be compared to other table.
  c. **rotation** table has no duplication but has null. Pkod count is 16294 (bigger than 'sell' table), it is caused by no sale in some product.
  d. **day_sale** gross revenue compared to **sell** to check its consistency, result is


  
### 2.3 Data Cleaning
  a. **day_sale** table will use column Date as a primary key and Pkod (product code) as a foreign key. <br>
      result 

## Data Manipulating
## Analyse
## Sharing
## Act


</p>



_Sales Dasboard_
# Sales Dasboard
## Sales Dasboard
>Dashboard is a display contains visualized metrics that related to a specified case/work so stakeholder can read data easily


![Screenshot of a comment on a GitHub issue showing an image, added in the Markdown, of an Octocat smiling and raising a tentacle.](https://media.licdn.com/dms/image/D5622AQH1_PNwOc66Fg/feedshare-shrink_2048_1536/0/1709649572913?e=1714003200&v=beta&t=rK9KrPEXBglZYYRD8iybeXnwhozcrs88w-F2lcT0u8c)

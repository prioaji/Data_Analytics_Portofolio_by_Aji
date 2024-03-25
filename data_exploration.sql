--in 'day_sale' table, checking duplicate and null
SELECT 
COUNT(*) AS count_all,
COUNT(DISTINCT Date) AS count_unique,
COUNTIF (Date IS NULL) AS count_null,
COUNT(Date)-COUNT(DISTINCT Date) AS count_duplicate

FROM `part-4-analyze.sales_grocery.day_sale` ;

--in 'sell' table, checking null
SELECT 
COUNT(*) AS count_all,
COUNT(DISTINCT PKod) AS count_unique,
COUNTIF(Pkod IS NULL) as count_null,
COUNT(PKod)-COUNT(DISTINCT PKod) AS count_duplicate

FROM `part-4-analyze.sales_grocery.sell` ;

--in 'rotation' table, checking null
SELECT 
COUNT(PKod) AS count_all,
COUNT(DISTINCT PKod) AS count_unique,
COUNTIF(PKod IS NULL) AS count_null,
COUNT(*) - COUNT(DISTINCT PKod) AS count_duplicate

FROM `part-4-analyze.sales_grocery.rotation` ;

--checking consistency of gross_sale from 'day_sale' and 'sell'
SELECT 
d_sale.month,
d_sale.gross_sale_d, --gross sale of 'daysale' table
sell.gross_sale_s, --gross sale of 'sell' table
d_sale.profit_d, -- profit of 'daysale' table
sell.profit_s -- profit of 'sell' table

FROM 
  ( SELECT 
  SUBSTRING(Date, 4 , 2) AS month, 
  SUM(sb) AS gross_sale_d, 
  SUM (marza) AS profit_d

  FROM `sales_grocery.day_sale`
  
  WHERE Date LIKE '%2018'
  
  GROUP BY SUBSTRING(Date, 4 , 2)
  ) AS d_sale
JOIN 
  (SELECT 
  SUBSTRING(Date, 4 , 2) AS month, 
  SUM (pwa_sb) AS gross_sale_s,
  SUM (pkwmarza) AS profit_s
  
  FROM `sales_grocery.sell`
  
  WHERE Date LIKE '%2018'
  
  GROUP BY SUBSTRING(Date, 4 , 2)
  ) AS sell
ON
d_sale.month = sell.month

ORDER BY d_sale.month
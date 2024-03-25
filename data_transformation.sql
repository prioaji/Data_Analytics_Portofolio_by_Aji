--cleaning and transforming 'day_sale' table
SELECT
DISTINCT Date AS date,
zn AS net_purchase,
sb AS gross_sale,
sb-zn AS profit_before_taxetc,
tax AS taxetc,
marza AS net_profit,
zn + tax + marza AS gross_2,
round((marza/sb) , 3)  AS margin

FROM `part-4-analyze.sales_grocery.day_sale`

WHERE Date LIKE '%2018'AND tax < sb; --to remove 2017 record and tax inconsistency

--cleaning and transforming 'sell' table with no primary key only foreign key
SELECT
CAST(CONCAT(SUBSTRING(Date,7,4),'-',SUBSTRING(Date,4,2),'-',SUBSTRING(Date,1,2)) AS date) AS date,
PKod AS p_code,
TRIM(Pgroup) AS p_grup,
TRIM(Pname) AS p_name,
Pquantity AS quantity,
pce_zn AS net_purchase,
pce_zn*Pquantity AS purchase_value,
pce_sn AS net_price,
pce_sn*Pquantity AS net_sale_value,
ROUND((pce_sn-pce_zn)*Pquantity,3) AS profit, --net price min net purchase is margin
ROUND((pce_sn-pce_zn)/pce_sn,3) AS margin,
pce_sb AS p_price, --product price after addition of tax etc
pce_sb*Pquantity AS gross_sale_value,
ROUND((pce_sb-pce_sn)*Pquantity,3) AS tax_etc

FROM `sales_grocery.sell`

WHERE Date LIKE '%2018';

--cleaning and transforming 'rotation' table
SELECT
r.PKod AS p_code,
s.p_name,
s.p_group,
p_sale_in_time AS sale_in_time,
Psale AS sale_amount,
SAFE_CAST(REPLACE(Rotation_in_days,'-','0') AS FLOAT64) AS rot_day,
SAFE_CAST(REPLACE(Rotation_in_times,'-','0') AS FLOAT64) AS rot_time,
Pavarage_stock AS stock_left

FROM `sales_grocery.rotation` AS r

LEFT JOIN --add product group to 'rotation' table
  (
  SELECT
  DISTINCT PKod AS p_code,
  TRIM(Pgroup) AS p_group,
  TRIM(Pname) AS p_name

  FROM `sales_grocery.sell`
  )  AS s
ON
r.PKod = s.p_code

WHERE PKod IS NOT NULL AND Rotation_in_days IS NOT NULL AND Rotation_in_times IS NOT NULL
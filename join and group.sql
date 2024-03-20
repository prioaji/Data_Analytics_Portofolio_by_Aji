SELECT 
loc_packet.alamat_gudang, COUNT(loc_packet.id_pelanggan) as packet_count

FROM
(SELECT
order_table.id_pelanggan,
order_table.id_gudang,
alamat_gudang

FROM
`part-4-analyze.warehouse_orders.orders` as order_table

JOIN 
`warehouse_orders.warehouse` 
ON
order_table.id_gudang = `warehouse_orders.warehouse`.id_gudang
) as loc_packet

GROUP BY loc_packet.alamat_gudang
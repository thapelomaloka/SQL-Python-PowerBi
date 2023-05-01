select b.brand_name, product_name,s.list_price,s.quantity, 
i.order_date, i.required_date, i.shipped_date, g.first_name, j.store_name, j.state
from production.products p

INNER JOIN production.brands b 
ON p.brand_id = b .brand_id

INNER JOIN production.categories c
ON p.category_id = c.category_id

INNER JOIN sales.order_items s
ON p.product_id = s.product_id

INNER JOIN sales.orders i
ON s.order_id = i.order_id

INNER JOIN sales.staffs g
ON i.staff_id = g.staff_id

INNER JOIN sales.stores j
ON g.store_id = j.store_id

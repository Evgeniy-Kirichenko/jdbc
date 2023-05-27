select product_name
from netology.ORDER
         join netology.CUSTOMER on customer_id = netology.CUSTOMER.id
where lower(netology.CUSTOMER.name) = lower(:name);
select itemID 
from Item
where buy_price = (select max(buy_price) from Item);

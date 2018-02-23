select count(*)
from(
select count(i.userID)
from Item i, Category c
where i.itemID = c.itemID
group by i.userID
having count(distinct category)>10) a;


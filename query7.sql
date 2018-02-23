select count(*)
from (
select count(b1.itemID)
from Bid b1 left join Bid b2 on 
b1.itemID = b2.itemID
where b1.userID < b2.userID
group by b1.userID,b2.userID)a
;


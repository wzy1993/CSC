

select count(distinct i.userID)
from Item i, Bid b
where i.userID = b.userID;

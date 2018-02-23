

select count(distinct u.userID)
from User u, Item i
where u.userID = i.userID
and u.rating > 1000;

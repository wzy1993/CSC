select count(*) 
from (
select itemID 
from Category 
group by itemID 
having count(*) = 4) as a;

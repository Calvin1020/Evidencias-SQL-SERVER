-- TALLER 
-- 1.
select c.FirstName,c.LastName,c.City, c.Email,count(i.InvoiceId) as total_invoices
from Customer as c
left join Invoice as i on c.CustomerId=i.CustomerId
group by c.FirstName,c.LastName,c.City, c.Email
;

-- 2. 
select a.Title as Album_title,a.ArtistId,t.TrackId, t.Name as track_name,ar.Name as artist_name
from Album as a
left join Track as t on a.AlbumId=t.AlbumId 
left join Artist as ar on a.ArtistId=ar.ArtistId
where a.Title='for those about to rock we salute you' and t.TrackId= 12
;

-- 3. 
Select a.ArtistId, a.Name
From Artist a
Left join Album al ON a.ArtistId = al.ArtistId
Where al.AlbumId IS NULL;


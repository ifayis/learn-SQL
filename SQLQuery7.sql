create table bookdetails (
BookId int primary key,
price decimal(10,2),
saleyear int
)


insert into bookdetails(BookId, price, saleyear)
values (1, 1250, 2004),
       (2, 900, 2007),
       (3, 1880, 2001),
       (4, 450, 2005)


select sum(price)
from bookdetails

select b.BookId, b.BookName, d.saleyear
from BOOKS b
join bookdetails d
on b.BookId = d.BookId
group by b.BookId, b.BookName, d.saleyear
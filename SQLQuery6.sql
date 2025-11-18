SELECT TOP (1000) [BookId]
      ,[BookName]
  FROM [booksDB].[dbo].[BOOKS]


  select a.AuthorName, b.BookName, b.BookId
  from BOOKS b
  join AUTHOR a
  on b.BookId = a.BookId

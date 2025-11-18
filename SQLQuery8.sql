SELECT TOP (1000) [BookId]
      ,[BookName]
  FROM [booksDB].[dbo].[BOOKS]

  CREATE VIEW vw_BookAuthorDetails
AS
SELECT 
    b.BookID,
    b.BookName,
    a.AuthorName
FROM Books b 
JOIN AUTHOR a
    ON b.BookId = a.BookId;


SELECT * FROM vw_BookAuthorDetails;

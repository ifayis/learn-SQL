SELECT TOP (1000) [detailsid]
      ,[studentid]
      ,[age]
      ,[department]
      ,[mark]
  FROM [studentsDB].[dbo].[studentdetails]

  create or alter procedure fetchdata
    @id int
  as
  begin
    select department, mark
    from studentdetails
    where @id = detailsid and mark > (select avg(mark) from studentdetails)
  end

  exec fetchdata @id = 102


 
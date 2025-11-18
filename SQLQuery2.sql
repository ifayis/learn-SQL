if object_id ('dbo.accounts', 'u') is not null
drop table accounts;

create table accounts(
accid int primary key,
name varchar(50),
balance decimal(18,2)
)

insert into accounts(accid, name, balance)
values (101, 'gokul', 1283.00),
       (102, 'indran', 8457.00)

select * from accounts

begin transaction 
  update accounts
  set balance = balance - 100
  where accid = 101

 if @@ERROR <> 0
  begin
   rollback transaction
   print 'transaction failed'
  end

  update accounts
  set balance = balance + 100
  where accid = 102

  if @@ERROR <> 0
  begin
   rollback transaction
   print 'transaction failed'
  end

   commit transaction
   print 'transaction successful'

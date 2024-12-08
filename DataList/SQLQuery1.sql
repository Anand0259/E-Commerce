use bank
create table Registration
(
id int identity primary key,
Name  Nvarchar(100),
Email  Nvarchar(100) not null unique,
Dob  Nvarchar(100),
Qual Nvarchar(100),
Doc  Nvarchar(100),
Pass Nvarchar(100),
Gender Nvarchar(100),
Tdate date default getdate()
)
 select*from Registration

 -- Ab procedure bnaege
 create proc _insertRegistration
 @Name nvarchar(100),
 @Email nvarchar(100),
 @Dob Nvarchar (100),
 @Qual nvarchar(100),
 @Doc nvarchar(100),
 @Pass nvarchar(100),
 @Gender nvarchar(100)
 as
 begin
  insert into Registration(Name,Email,Dob,Qual,Doc,Pass,Gender) values(@Name,@Email,@Dob,@Qual,@Doc,@Pass,@Gender)
 end

  -- ab login ke liye procedure bnaege
  create proc _login
  @email varchar(100),
  @Pass varchar(100)
  as
  begin -- yha count use kr rhe h ki agr record match kiya to true means 1 agr nhi match kiya to false means 0 output me
   select count(*) from Registration where Email=@email and Pass=@Pass
  end
  exec _login 'ayansh123@gmail.com','02599'
  
  -- means yha insert kr rhe agr sahi email aaye jo table me h to print 1 either 0
  -- agr email aur password match to 1 agr nhi to 0 print
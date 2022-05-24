create database QuanLySanPham
go
use QuanLySanPham
go

create table SanPham
(
	idSp char(5) primary key,
	ten nvarchar(30),
	gia float,
	loai varchar(10),
	constraint CK_SanPham_loai check (loai in ('Guitars','Basses','Drums'))
)

use QuanLySanPham
insert into SanPham
values ('SP001',N'Fender Telecaster',599000,'Guitars'),
		('SP002',N'Gibson SG',2517000,'Guitars'),
		('SP003',N'Basses số 1',1235000,'Basses'),
		('SP004',N'Basses số 2',758000,'Basses'),
		('SP005',N'Drums số 1',498000,'Drums'),
		('SP006',N'Drums số 2',9999000,'Drums')


--Delete SanPham where idSp = 'SP003'
select idSp,ten,gia
from SanPham
where loai='Guitars'

go
create or alter function FN_getidSanPham
()
returns char(5)
as
begin
	declare @id char(5)
	select top 1  @id=idSp
	from SanPham
	order by idSp desc
	declare @lastnumber int
	set @lastnumber=right(@id,3)+1
	declare @nextchar char(5)
	set @nextchar=CONCAT('SP', format (@lastnumber, 'D3'))
	return @nextchar
end
go
select dbo.FN_getidSanPham()
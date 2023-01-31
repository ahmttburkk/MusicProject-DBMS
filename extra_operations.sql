-- Trigger Part
Create trigger Genre_insert
on Genre
after insert
as
begin
select 'yeni bir genre eklendi'
end

insert into Genre
values (3, 'Aşk');


-- Procedure Part
CREATE PROCEDURE Sarki_İsimleri
AS 
BEGIN 
select SongName from Song;
END

execute Sarki_İsimleri;



-- View Part
CREATE VIEW Kullanıcılar AS
SELECT * FROM tblUser;

Select * from Kullanıcılar;
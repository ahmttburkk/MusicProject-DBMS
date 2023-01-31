Alter table Playlist Drop column PlaylistPicture;

Update Writer set Email = 'karacem@gmail.com' 
where WriterId = 1;

Delete from Writer 
where WriterFName = 'Aykut';



-- Mutlu türündeki(Genre) şarkı/şarkılar kayıtları(recording)
select Recording.RecordingName from Recording
where Recording.GenreId = 2;

-- 
SELECT COUNT(RecordingId), GenreId
FROM Recording
GROUP BY GenreId;


-- UserTypeId = 101 olan kullanıcıların Usernamelerini alfabetik olarak sırala
select Username from tblUser
inner join UserType on tblUser.UserId = UserType.UserId
where UserTypeId = 101
order by Username;


-- Playlist tablosundaki PlaylistId ve PlaylistName'leri listeleyin.
select Playlist.PlaylistId, Playlist.PlaylistName from Playlist;
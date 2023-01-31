create database Music_Project

create table Country(
CountryId int not null primary key,
CountryName nvarchar(50)
);

create table tblUser(
UserId int not null primary key,
Username nvarchar(50),
BirthDate int,
City nvarchar(50),
CountryId int foreign key references Country(CountryId)
);

create table SubscriptionType(
SubscriptionTypeId int not null primary key,
SubscriptionTypeName nvarchar(50),
SubscriptionTypeDesc nvarchar(100)
);

create table UserType(
UserTypeId int not null primary key,
StartDate datetime,
EndDate datetime,
SubscriptionTypeId int foreign key references SubscriptionType(SubscriptionTypeId),
UserId int foreign key references tblUser (UserId)
);

create table Follower(
FollowerId int not null primary key,
BeginDate date,
UserTypeId int foreign key references UserType(UserTypeId)
);

create table Access(
AccessId int not null primary key,
AccessDate date,
UserTypeId int foreign key references UserType(UserTypeId)
);

create table PlaylistType(
PlaylistId int not null primary key,
PlaylistName nvarchar(50)
);

create table Playlist(
PlaylistId int not null primary key,
PlaylistName nvarchar(50),
PlaylistDesc nvarchar(200),
PlaylistPicture nvarchar(50),
CreationDate datetime,
PlaylistTypeId int foreign key references PlaylistType(PlaylistId),
AccessId int foreign key references Access(AccessId)
);

create table Artist(
ArtistId int not null primary key,
ArtistFName nvarchar(50),
ArtistLName nvarchar(50),
ArtistDesc nvarchar(200),
ArtistBirthDate date
);

create table Writer(
WriterId int not null primary key,
WriterFName nvarchar(50),
WriterLName nvarchar(50),
Email nvarchar(50)
);

create table WriterArtist(
WriterId int foreign key references Writer(WriterId),
ArtistId int foreign key references Artist(ArtistId)
);


create table Song(
SongId int not null primary key,
SongName nvarchar(50),
SongDate datetime,
WriterId int foreign key references Writer(WriterId)
);

create table Genre(
GenreId int not null primary key,
GenreName nvarchar(50)
);

create table AlbumRecording(
AlbumRecordingId int not null primary key,
TrackNumber int,
);

create table Recording(
RecordingId int not null primary key,
RecordingName nvarchar(50),
SongId int foreign key references Song(SongId),
GenreId int foreign key references Genre(GenreId),
AlbumRecordingId int foreign key references AlbumRecording(AlbumRecordingId)
);

create table PlaylistRecording(
RecordingId int foreign key references Recording(RecordingId),
PlaylistId int foreign key references Playlist(PlaylistId)
);

create table Album(
AlbumId int not null primary key,
AlbumName nvarchar(50),
ReleaseDate datetime,
AlbumRecordingId int foreign key references AlbumRecording(AlbumRecordingId)
);

create table tblLabel(
LabelId int not null primary key,
LabelName nvarchar(50)
);

create table AlbumLabel(
LabelId int foreign key references tblLabel(LabelId),
AlbumId int foreign key references Album(AlbumId)
);


--Insert Codes

insert into Country(CountryId, CountryName) values (1, 'Türkiye');
insert into Country(CountryId, CountryName) values (2, 'Almanya');


insert into tblUser(UserId, Username, BirthDate, City, CountryId) values (1, 'Ahmet Burak Mümin', 2000, 'Bursa', 1);
insert into tblUser(UserId, Username, BirthDate, City, CountryId) values (2, 'Erling Haaland', 2001, 'Dortmund', 2);


insert into SubscriptionType(SubscriptionTypeId, SubscriptionTypeName, SubscriptionTypeDesc) values (01, 'Kayıtlı Abonelik', 'Bu abonelik türünde bir kullanıcıya abone olmak için sizin de kullanıcı olmanız gerekir.');
insert into SubscriptionType(SubscriptionTypeId, SubscriptionTypeName, SubscriptionTypeDesc) values (02, 'Kayıtsız Abonelik', 'Bu abonelik platforma kayıt olmadan da kullanıcı takip edebilirsiniz.');


insert into UserType(UserTypeId, StartDate, EndDate, SubscriptionTypeId, UserId) values (101, '2021-03-12 16:22:12', '2022-02-16 12:01:04', 02, 1);
insert into UserType(UserTypeId, StartDate, EndDate, SubscriptionTypeId, UserId) values (102, '2022-10-23 13:30:17', '2022-11-15 18:30:19', 01, 2);


insert into Follower(FollowerId, BeginDate, UserTypeId) values (1, '2023-01-02', 101);
insert into Follower(FollowerId, BeginDate, UserTypeId) values (2, '2023-01-04', 102);


insert into Access(AccessId, AccessDate, UserTypeId) values (1, '2023-01-03', 101);
insert into Access(AccessId, AccessDate, UserTypeId) values (2, '2023-01-05', 102);


insert into PlaylistType values (1, 'Hüzünlü');
insert into PlaylistType values (2, 'Neşeli');


insert into Playlist(Playlist.PlaylistId, Playlist.PlaylistName, PlaylistDesc, PlaylistPicture, CreationDate, PlaylistTypeId, AccessId)
values (1, 'Mor Salkımlar', 'Dinlerken hüzünleneceksiniz.', 'Resim1', '2012-11-23 12:30:17', 1, 1);
insert into Playlist(Playlist.PlaylistId, Playlist.PlaylistName, PlaylistDesc, PlaylistPicture, CreationDate, PlaylistTypeId, AccessId)
values (2, 'Hayat Ne Güzel', 'Dinlerken eğleneceksiniz.', 'Resim2', '2013-09-12 11:15:17', 2, 2);



insert into Artist(ArtistId, ArtistFName, ArtistLName, ArtistDesc, ArtistBirthDate)
values (1, 'Kaan', 'Tangöze', 'Lorem Ipsum', '1982-01-05');
insert into Artist(ArtistId, ArtistFName, ArtistLName, ArtistDesc, ArtistBirthDate)
values (2, 'Ankaralı', 'Namık', 'Lorem Ipsum', '1985-04-08');


insert into Writer(WriterId, WriterFName, WriterLName, Email)
values (1, 'Cem', 'Kara', 'cemkara@gmail.com');
insert into Writer(WriterId, WriterFName, WriterLName, Email)
values (2, 'Aykut', 'Berber', 'berberaykutt@gmail.com');


insert into WriterArtist values (1, 1);
insert into WriterArtist values (2, 2);

-- (I added other insert operations via visual table...)
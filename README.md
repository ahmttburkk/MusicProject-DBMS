# MusicProject-DBMS

MusicProject DBMS is a database management system that keeps data of songs, playlists, albums, genres, users. It was developed by using MSSQL.


# Business Need

Music has been very important to people since time immemorial. Today, listening to 
music is a pleasure for many people, but for some it has become a necessity. It should become 
easier for people to find what they want among dozens of existing music styles, to gather their 
favorite music by making their own lists, and to learn different music and songs from different 
cultures. In this context, the project that I aim to do is directed towards this goal.


# Business Requirements

* Must have user login.
* Must be a musician/singer login.
* It should have a user-friendly and easy-to-understand interface.
* There must be lists in order for the songs to be gathered together.
* There must be a List Setup feature so that users can add the songs they want to the same 
playlist, even if they are in different styles.
* After users create the lists they want, they will be able to add the related lists to the relevant 
folders (library).
* It will be possible for musicians to list their own songs either by albums or according to their 
own listing methods. This feature will be visible when entering the Musician's profile.
* In order to see the number of followers and followed, there must be a profile page including 
profile photo and background photo. (For each user)
* Musicians/singers will be able to receive donations from other users through their own 
accounts.
* For albums released by singers, there should be an Albums section.
* There will be lists created by the platform for the most listened songs in each country.
* Songs listened to online can be seen by other followers when activated.
* The songs that listeners listen to the most on a weekly basis are collected in a list called Most 
Listened and presented to the user.


# Business Value

* Artists/musicians will only use one platform to market their songs or make them available in 
bulk.
* People who want to listen to music will have the chance to listen to all kinds of music under 
one roof.
* People who want to listen to music will allow them to earn extra money by subscribing to their 
favorite artists.
* Artists will be able to start earning money when they exceed a certain number of users and 
reach a certain number of streams.
* There will be different lists according to different moods, and users will be able to play lists 
filled with music that suits their mood when they are in different moods.
* The platform will be able to earn money with commissions, mostly from advertisements, and 
less from users who subscribe.


# Business Rules

- User can have one only one Country. Country can have zero, one or many Users.
- User can have one or many User Type. User Type can have one only one User.
- User Type can be followed by zero one or many Follower. Follower can follow one only 
one User Type.
- User Type can have zero one or many Access. Access can have one only one User Type.
- Access can have zero one or many Playlist. Playlist can have one and only one Access.
- Artist can have zero one or many Writer. Writer can have zero one or many Artist
- Writer can write zero one or many Song. Song can be written by zero one or many Writer.
- Song can have one or many Recording. Recording can have one or many Song.
- Artist can have zero one or many Recording. Recording can have zero one or many Artist.
- Recording can have one or many Genre. Genre can have zero one or many Recording.
- Recording can be included by zero one or many Playlist. Playlist can include zero one or 
many Recording.
- Playlist can have one and only one Playlist Type. Playlist Type can have zero one or 
many Playlist.
- Recording can be related to one only one Album Recording. Album Recording can be 
related to one or many Recording.
- Album Recording can be related to zero one or many Album. Album can be related to 
zero one or many Album Recording.
- Album can have one or many Label. Label can have zero one or many Album.

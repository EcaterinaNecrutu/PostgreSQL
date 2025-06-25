create table if not exists GENRE (
	id SERIAL primary key,
	name varchar(60) not null
);

create table if not exists Musician (
	id SERIAL primary key,
	name varchar(60) not null
);

create table if not exists Track (
	id SERIAL primary key,
	name varchar(60) not null,
	duration integer,
	album_id integer references album(id)
);

create table if not exists Album (
	id SERIAL primary key,
	name varchar(60) not null,
	year_of_issue int2 not null
);

create table if not exists Collection (
	id SERIAL primary key,
	name varchar(60) not null,
	year_of_issue int2 not null
);

create table if not exists MusiciansGenres (
	Genre_id int references Genre(id),
	Musician_id int references Musician(id),
	constraint pk primary key (Genre_id, Musician_id)
);

create table if not exists MusiciansAlbums (
	Album_id int references Album(id),
	Musician_id int references Musician(id),
	constraint a primary key (Album_id, Musician_id)
);

create table if not exists TracksCollections (
	Track_id int references Track(id),
	Collection_id int references Collection(id),
	constraint b primary key (Track_id, Collection_id)
);


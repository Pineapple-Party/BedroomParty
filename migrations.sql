CREATE DATABASE bedroom 

\c bedroom 

CREATE TABLE users (id PRIMARY KEY SERIAL, user_name VARCHAR(255), user_password VARCHAR(255), user_email VARCHAR(255), password_hash VARCHAR(255), password_salt VARCHAR(255) );
CREATE TABLE pictures (id PRIMARY KEY SERIAL, picture_link TEXT);
CREATE TABLE playlists (id PRIMARY KEY SERIAL, playlist_link TEXT);
CREATE TABLE noises (id PRIMARY KEY SERIAL, noise_link TEXT); 
CREATE TABLE environments (id PRIMARY KEY SERIAL,
	FOREIGN KEY ( env_creator_name ) REFERENCES users (user_name),  
	FOREIGN KEY ( env_picture_id ) REFERENCES pictures (id),
	FOREIGN KEY ( env_playlist_id ) REFERENCES playlists (id),
	FOREIGN KEY ( env_noise_id ) REFERENCES noises (id));
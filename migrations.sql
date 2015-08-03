CREATE DATABASE bedroom 

\c bedroom 

CREATE TABLE users (id SERIAL PRIMARY KEY, user_name VARCHAR(255), user_password VARCHAR(255), user_email VARCHAR(255), password_hash VARCHAR(255), password_salt VARCHAR(255) );
CREATE TABLE pictures (id SERIAL PRIMARY KEY, picture_link TEXT);
CREATE TABLE playlists (id SERIAL PRIMARY KEY, playlist_link TEXT);
CREATE TABLE noises (id SERIAL PRIMARY KEY, noise_link TEXT); 
CREATE TABLE environments (id SERIAL PRIMARY KEY,
	FOREIGN KEY ( env_creator_name ) REFERENCES users (user_name),  
	FOREIGN KEY ( env_picture_id ) REFERENCES pictures (id),
	FOREIGN KEY ( env_playlist_id ) REFERENCES playlists (id),
	FOREIGN KEY ( env_noise_id ) REFERENCES noises (id));
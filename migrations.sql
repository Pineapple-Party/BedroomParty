CREATE DATABASE bedroom

\c bedroom

CREATE TABLE users (id SERIAL PRIMARY KEY, user_name VARCHAR(255), user_password VARCHAR(255), user_email VARCHAR(255), password_hash VARCHAR(255), password_salt VARCHAR(255) );
CREATE TABLE pictures (id SERIAL PRIMARY KEY, picture_link TEXT);
CREATE TABLE playlists (id SERIAL PRIMARY KEY, playlist_link TEXT);
CREATE TABLE noises (id SERIAL PRIMARY KEY, noise_link TEXT);
CREATE TABLE bedrooms (id SERIAL PRIMARY KEY, env_creator_id INTEGER REFERENCES users (id),
	env_picture_id INTEGER REFERENCES pictures (id),
	env_playlist_id INTEGER REFERENCES playlists (id),
	env_noise_id INTEGER REFERENCES noises (id));

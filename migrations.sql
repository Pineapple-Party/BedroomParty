CREATE DATABASE bedroom

\c bedroom

CREATE TABLE users (id SERIAL PRIMARY KEY, user_name VARCHAR(255), user_password VARCHAR(255), user_email VARCHAR(255), password_hash VARCHAR(255), password_salt VARCHAR(255) );
CREATE TABLE pictures (id SERIAL PRIMARY KEY, picture_link TEXT);
CREATE TABLE playlists (id SERIAL PRIMARY KEY, playlist_link TEXT);
CREATE TABLE noises (id SERIAL PRIMARY KEY, noise_link TEXT, noise_name VARCHAR(255));
CREATE TABLE bedrooms (id SERIAL PRIMARY KEY, env_creator_id INTEGER REFERENCES users (id),
	env_picture_id INTEGER REFERENCES pictures (id),
	env_playlist_id INTEGER REFERENCES playlists (id),
	env_noise_id INTEGER REFERENCES noises (id));

INSERT INTO noises (noise_link, noise_name) VALUES ('https://soundcloud.com/hhazydreamss/sets/telemarketing', 'telemarketing');
INSERT INTO noises (noise_link, noise_name) VALUES ('https://soundcloud.com/hhazydreamss/sets/waves', 'waves');
INSERT INTO noises (noise_link, noise_name) VALUES ('https://soundcloud.com/hhazydreamss/sets/chatter', 'chatter');
INSERT INTO noises (noise_link, noise_name) VALUES ('https://soundcloud.com/hhazydreamss/sets/forest', 'forest');
INSERT INTO noises (noise_link, noise_name) VALUES ('https://soundcloud.com/hhazydreamss/sets/bees', 'bees');

INSERT INTO noises (noise_link, noise_name) VALUES ('https://soundcloud.com/jimbojones1-3/sets/creepyghost', 'creepy');
INSERT INTO noises (noise_link, noise_name) VALUES ('https://soundcloud.com/jimbojones1-3/sets/amazon-shamans', 'shamans');
INSERT INTO noises (noise_link, noise_name) VALUES ('https://soundcloud.com/jimbojones1-3/sets/nature', 'nature');
INSERT INTO noises (noise_link, noise_name) VALUES ('https://soundcloud.com/jimbojones1-3/sets/rain-day-playlist', 'rain');

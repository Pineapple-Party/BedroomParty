#[Bedroom Party](https://github.com/Pineapple-Party/BedroomParty)

<img src="http://i.imgur.com/rK7RTdCm.png?1" align="right"> 

Bedroom Party is a web application that lets you create and share "bedrooms". It pulls together images, music, and white noise to create a user's desired experience. 

:notebook_with_decorative_cover: Table of Contents :notebook_with_decorative_cover:
=================

- [links](#links)
- [intro](#intro)
- [Installation](#installation)
- [Bedrooms](#bedrooms)
  * [Designing Bedrooms](#designing-bedrooms)
- [Sharing](#sharing)
- [Technologies](#technologies) 
- [TODO](#todo) 
- [Known Issues](#known-issues)

=====


# Links

- [User stories](https://docs.google.com/document/d/1Qa5y4JW0fYWnTNc18nNEpSWzuLusIqrXq1B4w0zqwEk/edit?usp=sharing)
- [Wireframes](http://imgur.com/a/uz9iZ)

# Intro

Bedroom Party an audio-visual experiment which seeks to create an ideal atmosphere or "bedroom" setting for a user at any given time. It pulls in images from users, music from soundcloud, and white noise. In the future, users will be able to save and share their bedrooms with others. 

# Installation

- Clone this repository
- Navigate to the directory it is stored in.
- 'bundle' the Gemfile
- Run the migrations.sql file in Postgres to generate the required databases
- bundle exec rackup
- go to localhost:9292

# Bedrooms 

Users can log in and begin to create bedrooms or look through the share gallery to see what others have created. Each bedroom contains a playlist, gallery, and noise setting.

## Designing Bedrooms

Use the mood button to add playlists from soundcloud, add direct image links into a timed gallery slideshow, and choose a noise via the slider.

# Sharing 
[ UNDER CONSTRUCTION]

Clicking the share button will save your bedroom and host it on the share gallery where everyone can see your room(s).

# technologies

- JavaScript
- jQuery
- Sinatra
- Postgresql 
- Skeleton 
- Sass
- SoundCloud API
- Imgur API
- ActiveRecord


# TODO
 - [ ]  Better integration to search with soundcloud 
 - [X] Implement room saving and sharing 
 - [ ] Implement imgur image search

# Known Issues

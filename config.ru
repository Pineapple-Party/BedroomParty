require 'sinatra/base'

require ('./controllers/ApplicationController’)
require ('./controllers/BedroomController’)
require ('./controllers/HomeController’)
require ('./controllers/UserController’)

require ('./models/BedroomsModel’)
require ('./models/NoiseModel’)
require ('./models/PicturesModel’)
require ('./models/PlaylistsModel’)
require ('./models/UserModel’)


# Dir.glob('./{controllers,models}/*.rb').each {
#	|file| require file 
# }

map('/') { run HomeController }
map('/users') { run UsersController }
map('/bedroom') { run BedroomController }

require 'sinatra/base'


require './controllers/ApplicationController’

Dir.glob('./{controllers,models}/*.rb').each {
	|file| require file
}

map('/') { run HomeController }
map('/users') { run UsersController }
map('/bedroom') { run BedroomController }

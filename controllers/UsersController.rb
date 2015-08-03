class UsersController < ApplicationController

	get '/login' do 
		erb :login
	end 

	get '/register' do 
		erb :registration
	end 

end 
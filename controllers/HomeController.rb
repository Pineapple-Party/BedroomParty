class HomeController < ApplicationController

	get '/' do
		@bedrooms = Bedroom.all
		erb :login
	end

		
	get '/logout' do
	  session[:user] = nil
	  redirect '/'
	end



end

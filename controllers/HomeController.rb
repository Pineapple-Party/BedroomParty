class HomeController < ApplicationController

	get '/' do 
		@bedrooms = Bedroom.all 
		erb :login
	end
end 
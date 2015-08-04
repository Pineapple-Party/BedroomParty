class BedroomController < ApplicationController

	def test(params)
		puts params
	end 
	
  get '/' do
    erb :bedroom
  end

  get '/test' do 

	erb :test 
	# print the html for the player widget
	
	
end 

end

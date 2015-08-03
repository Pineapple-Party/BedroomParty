class BedroomController < ApplicationController

	def test(params)
		puts params
	end 
	
  get '/' do
    erb :bedroom
  end
end

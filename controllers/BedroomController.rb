class BedroomController < ApplicationController

	def test(params)
		puts params
<<<<<<< HEAD
	end


	enable :sessions

	def is_not_authenticated?
		session[:user].nil?
	end




	get '/' do
		puts is_not_authenticated?
		puts session[:user]
		if is_not_authenticated? == false
			return erb :bedroom

		else
			@message = 'No access little buddy... You must login'
			return erb :login
		end

		end

=======
	end 
	
  get '/' do
    erb :bedroom
  end

  get '/test' do 

	erb :test 
	# print the html for the player widget
	
	
end 
>>>>>>> soundcloud

end

class BedroomController < ApplicationController

	def test(params)
		puts params

	end


	enable :sessions

	def is_not_authenticated?
		session[:user].nil?
	end

	def set_noise_link(name)
		@set = Noise.find_by params[:noise_name => name]
		@set.noise_link 
	end 

	def create_room(playlist, noise, user_id)	
		@bedroom = Bedroom.new 
		@bedroom.env_playlist_id = playlist 
		@bedroom.env_noise_id = noise 
		@bedroom.env_creator_id = user_id 

		bedroom.save
	end 

	# def build_gallery(pictures)
	# 	pictures.each_pair { |key, value|
	# 		@bedroom.

	# 	}




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

 	get '/test' do 
  		@pictures = Picture.find_by params[:id => 1]
  		puts @pictures.picture_link
		erb :test 
	end 

	post '/share' do
		#get pictures, playlist, and currently set noise 
		@playlist = params[:playlist_url] 
		@noise = set_noise_link(params[:noise_name])
		@user_id = session[:user]
		#session.id = @user 
		#@user_id = session.id 
		create_room(@playlist, @noise, @user_id)
	end 
		#@pictures = {} #link : bedroom id 


end

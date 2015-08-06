class BedroomController < ApplicationController

	def test(params)
		puts params

	end

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

		@bedroom.save
		puts 'bedroom saved' 
		puts @bedroom 
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

	get '/share' do 
		puts share 
	end 

	post '/share' do

		#get pictures, playlist, and currently set noise
		@playlist = params[:playlist]
		@noise = set_noise_link(params[:noise])	
		@user = session[:user]
		#grab username 
		@user_id = @user.id

		# create models for 'noises'
		@new_noise = Noise.new
		@new_noise.noise_link = @noise
		@new_noise.noise_name = 'fake_name'
		@new_noise.save
		# create models for 'playlist'
		@new_playlist = Playlist.new 
		@new_playlist.playlist_link = @playlist 
		@new_playlist.save 
		# create new images 
		@pic_list = params[:gallery]
		@pic_list.each do |pic|
			@picture = Picture.new 
			@picture.picture_link = pic 
			@picture.save 
		end 

		#create new bedroom 
		create_room(@new_playlist.id, @new_noise.id, @user_id)
		status 200 
	end 
		#@pictures = {} #link : bedroom id 


end

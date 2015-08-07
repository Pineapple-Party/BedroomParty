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

	def bedroom
		@bedroom
	end

	def set_bedroom(room)
		@bedroom = room
	end

	def create_room(playlist, noise, user_id)	
		@bedroom = Bedroom.new 
		@bedroom.env_playlist_id = playlist 
		@bedroom.env_noise_id = noise 
		@bedroom.env_creator_id = user_id 

		@bedroom.save
		set_bedroom(@bedroom.id)
		puts 'bedroom saved'
		puts @bedroom
	end 

	# def build_gallery(pictures)
	# 	pictures.each_pair { |key, value|
	# 		@bedroom.

	# 	}




	get '/' do
		#no time to move things over properly
		redirect 'bedroom/test'

	end

 	get '/test' do 
 		puts is_not_authenticated?
		puts session[:user]
		if is_not_authenticated? == false
			#set default image based on user 
			@pictures = Picture.find_by params[:id => 1]
  			puts @pictures.picture_link

  			@default = {}
  			@bed = Bedroom.where(env_creator_id: session[:user]).first(1)[0]
			@default[:playlist] = Playlist.where(id: @bed.read_attribute(:env_creator_id))
			#@default.playlist.to_json(include: :playlist_link)
			puts @default[:playlist][playlist_link]
			status 200 


			return erb :test 
		else
			@message = 'No access little buddy... You must login'
			return erb :login
		end
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
		@new_noise.noise_name = params[:noise]
		@new_noise.save
		# create models for 'playlist'
		@new_playlist = Playlist.new 
		@new_playlist.playlist_link = @playlist 
		@new_playlist.save 

		# create new bedroom 
		create_room(@new_playlist.id, @new_noise.id, @user_id)

		# create new images 
		@pic_list = params[:gallery]
		@pic_list.each do |pic|
			@picture = Picture.new 
			@picture.picture_link = pic
			@picture.fk_bedroom_id = bedroom 
			@picture.save 
		end
		
	end 
		#@pictures = {} #link : bedroom id 


end

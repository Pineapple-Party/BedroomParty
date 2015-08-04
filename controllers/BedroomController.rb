class BedroomController < ApplicationController

	def test(params)
		puts params
	end 
	
  get '/' do
    erb :bedroom
  end

  get '/test' do 
  	# register a client with YOUR_CLIENT_ID as client_id_
	@client = SoundCloud.new(:client_id => '978e422d49a50b92fa915cac4a56e5be')
	# get 10 hottest tracks
	# get a tracks oembed data
	@track_url = 'http://soundcloud.com/forss/flickermood'
	@embed_info = client.get('/oembed', :url => @track_url)
	erb :test 
	# print the html for the player widget
	
	
	end

	post '/test' do 
		@track_url = params[:url]
		@embed_info = @client.get('/oembed', :url => @track_url)
	end 

end

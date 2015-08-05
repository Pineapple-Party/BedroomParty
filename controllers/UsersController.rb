class UsersController < ApplicationController



	enable :sessions

	def does_user_exist(username)
		user = User.find_by(:user_name => username.to_s)

		if user
			return true
		else
			return false
		end
	end

# is a user logged in?
def is_not_authenticated?
	session[:user].nil?
end


#registration login
	get '/register' do
		erb :registration
	end

	get '/login' do
		erb :login
	end

	post '/register' do

		@message = ''

		if does_user_exist(params[:user_name]) == true
			@message = 'That name is taken kid'
			return erb :registration
		end

		password_salt = BCrypt::Engine.generate_salt
		password_hash = BCrypt::Engine.hash_secret(params[:password], password_salt)

		newbie = User.new
		newbie.user_name = params[:user_name]
		newbie.password_hash = password_hash
		newbie.password_salt = password_salt
		newbie.save

		@message = 'Registration Complete!'

		session[:user]
		return redirect to('../bedroom')

	end

	post '/login' do

		@message = ''
		if does_user_exist(params[:user_name]) == false
				@message = 'Sorry kid... but that username does not exist'
				return erb :login
		end

		#find and get your user
		user = User.where(:user_name => params[:user_name]).first!

		#does the password match
		pwd = params[:password]
		if user.password_hash == BCrypt::Engine.hash_secret(pwd, user.password_salt)
			@message = 'You have been logged in Successfully'
			session[:user] = user

			return redirect to('../bedroom')
		else
			@message = 'Sorry password does not match.'
			return erb :login
		end

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




end

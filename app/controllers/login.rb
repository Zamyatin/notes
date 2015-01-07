
get '/' do
  redirect '/sessions/new'
end

get '/sessions/new' do
 if session[:user_logged_in]
    redirect '/home'
  else
    @error_message = nil
    erb :'login/index'
  end
end

post '/sessions' do
  @user = User.authenticate(params[:email],params[:password])
    if @user
      session[:user_logged_in] = @user.id
      redirect '/home'
    else
      @error_message = "Invalid Email or Password!"
      erb :'login/index'
    end
end

post '/sessions/end' do
  session.delete(:user_logged_in)
  redirect '/'
end

get '/users/new' do
  erb :'user/create_new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_logged_in] = @user.id
    redirect '/home'
  else
    @error_message = "WHAT THE FUCK!?!?"
    erb :'user/create_new'
  end
end

get '/home' do
  erb :home
end

# session.delete(:user_logged_in)
# session[:user_logged_in] = nil


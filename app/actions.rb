# Homepage (Root path)
get '/' do
  erb :index
end

get 'users/login' do
  erb :'users/login'
end
 
post 'users/login' do
  @user = User.find_by_email(params[:email]) 
  if @user
    session[:email] = @user.email
    redirect '/'
  end
end
 
# get '/logout' do
#   session[:email] = ""
#   redirect '/'
# end

get '/songs' do
  @songs = Song.all
  erb :'songs/index'
end

post '/songs' do
  @song = Song.new(
    title: params[:title],
    author: params[:author],
    url:  params[:url]
  )
  if @song.save
    redirect '/songs'
  else
    erb :'songs/new'
  end
end

get '/songs/new' do
  @song = Song.new
  erb :'songs/new'
end

get '/users' do
  @users = User.all
  erb :'songs/index'
end

post '/users' do
  @user = User.new(
    name: params[:name],
    email: params[:email],
    password:  params[:password]
  )
  if @user.save
    redirect '/songs'
  else
    erb :'users/new'
  end
end

get '/users/new' do
  @user = User.new
  erb :'users/new'
end
get '/users' do
  erb :'users/index'
end

get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])

  if @user.save
    redirect "/users/#{@user.id}"
  else
    @errors = @user.error.full_message
    erb :'users/new'
  end
end

get '/users/:id' do
  @user = User.find_by(params[:username])
  if @user
    erb :'users/show'
  else
    @errors = ["Something went wrong ><"]
    erb :'users/index'
  end
end

get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end

put '/users/:id' do
  @user = User.find(params[:id])
  @user.update(params)
  redirect "/users/#{@user.id}"
end

delete 'users/:id' do
  @user = User.find(params[:id])
  @user.destroy!
  redirect "/sessions/login"
end

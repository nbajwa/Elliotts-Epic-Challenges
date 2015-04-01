get '/login' do
  erb :login
end

post '/login' do
   @user = User.authenticate(params[:email], params[:password])
    if @user
      session[:user_id] = @user.id
      redirect '/'
    else
      @errors = "Sorry invalid information"
      erb :login
    end
end

post '/sign_up' do
  @user = User.create(email: params[:email], password: params[:password], name: params[:name])
  if @user.valid?
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = "Sorry invalid information"
    erb :login
  end
end




# post '/sessions' do
#   @email = params[:email]
#   user = User.authenticate(@email, params[:password])
#   if user
#     session[:user_id] = user.id
#     redirect '/'
#   else
#     @error = "Invalid email or password."
#     erb :sign_in
#   end
# end

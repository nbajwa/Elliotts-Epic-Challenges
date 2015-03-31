
get '/sessions/new' do
  @email = nil
  erb :sign_in
end

post '/sessions' do
  @email = params[:email]
  user = User.authenticate(@email, params[:password])
  if user
    session[:user_id] = user.id
    redirect '/'
  else
    @error = "Invalid email or password."
    erb :sign_in
  end
end

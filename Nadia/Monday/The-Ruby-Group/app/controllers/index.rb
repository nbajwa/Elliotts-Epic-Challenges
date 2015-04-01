get '/' do
  @meetings = Meeting.all
  erb :index
end


get '/meetings/new' do
  erb :new_meeting
end


post '/meetings' do
  @user = User.find_by_name(params[:meeting][:leader])
  if @user
  @group = Group.all.sample

  @meeting = Meeting.new(params[:meeting].merge(leader: @user))
  # @meeting.leader = @user or use this line instead of the .merge above
     @meeting.group = @group
  @meeting.save

  redirect '/'
end

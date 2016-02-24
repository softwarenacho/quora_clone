get '/' do
  if session[:id]
    redirect to('/feed')
  else
    erb :index
  end
end

get '/feed' do
  puts "ENTRE A FEED"
  if session[:id]
    @user = User.find(session[:id])
    @questions_array = Question.all
    puts "ID #{@user.id} y #{@user.name}"
    erb :feed
  else
    erb :index
  end
end
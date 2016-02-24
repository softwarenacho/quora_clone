

get '/create_question' do
  erb :new_question
end

post '/save_question' do
  title = params[:title]
  content = params[:content]
  @user = User.find(session[:id])
  Question.create(title: title, content: content, user_id: @user.id)
  redirect to ("/feed")
end

get '/show/:id' do
  @user = User.find(session[:id])
  @question = Question.find(params[:id])
  @answers_array = Answer.where(question_id: @question.id)
  erb :question
end

get '/edit_question/:id' do
  @question = Question.find(params[:id])
  erb :edit_question
end

post '/update_question/:id' do
  @question = Question.find(params[:id])
  title = params[:title]
  content = params[:content]
  Question.update(@question.id, :title => title, :content => content)
  redirect to ("/show/#{@question.id}")
end

get '/delete_question/:id' do
  question = Question.find(params[:id])
  question.destroy
  @user = User.find(session[:id])
  erb :feed
end
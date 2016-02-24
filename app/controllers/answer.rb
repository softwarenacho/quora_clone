post '/answer_new' do
  @user = User.find(session[:id])
  @question = Question.find(params[:question_id])
  answer = params[:answer]
  Answer.create(user_id: @user.id, question_id: @question.id, answer: answer)
  redirect to("/show/#{@question.id}")
end
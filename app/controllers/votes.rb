get '/answer_vote/:user_id&:answer_id&:vote' do
  vote = params[:vote]
  if AnswerVote.where(user_id: params[:user_id], answer_id: params[:answer_id]).length == 0
    AnswerVote.create(user_id: params[:user_id], answer_id: params[:answer_id], vote: vote)
  end
  redirect to("/show/#{Answer.find(params[:answer_id]).question_id}")
end

get '/question_vote/:user_id&:question_id&:vote' do
  vote = params[:vote]
  if QuestionVote.where(user_id: params[:user_id], question_id: params[:question_id]).length == 0
    QuestionVote.create(user_id: params[:user_id], question_id: params[:question_id], vote: vote)
  end
  redirect to("/show/#{params[:question_id]}")
end

helpers do

  def question_score(id)
    question_score = QuestionVote.where(question_id: id)
    score = 0
    if question_score.empty?
      score
    else
      question_score.each do |qv|
        score += qv.vote
      end
    end
    score
  end

  def answer_score(id)
    answer_score = AnswerVote.where(answer_id: id)
    score = 0
    if answer_score.empty?
      score
    else
      answer_score.each do |qv|
        score += qv.vote
      end
    end
    score
  end

end
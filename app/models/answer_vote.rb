class AnswerVote < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :answer
end

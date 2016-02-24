class QuestionVotes < ActiveRecord::Migration
  def change
    create_table :question_votes do |qv|
      qv.integer :question_id
      qv.integer :user_id
      qv.integer :vote
    end
  end
end

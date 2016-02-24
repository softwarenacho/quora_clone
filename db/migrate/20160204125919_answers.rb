class Answers < ActiveRecord::Migration
  def change
    create_table :answers do |a|
      a.integer :user_id
      a.integer :question_id
      a.string :answer
      a.timestamps
    end
  end
end

class Questions < ActiveRecord::Migration
  def change
    create_table :questions do |q|
      q.integer :user_id
      q.string :title
      q.string :content
      q.timestamps
    end
  end
end

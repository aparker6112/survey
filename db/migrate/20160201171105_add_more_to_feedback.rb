class AddMoreToFeedback < ActiveRecord::Migration
  def change
  	add_column :questions, :question_six, :string
  	add_column :questions, :question_seven, :string
  end
end

class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.integer :question_one, default: 5
    	t.string :question_two
    	t.string :question_three
    	t.string :question_four
    	t.string :question_five
      t.timestamps null: false
    end
  end
end

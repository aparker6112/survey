class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.integer :question_one, default: 5
    	t.integer :question_two, default: 5
    	t.integer :question_three, default: 5
    	t.integer :question_four, default: 5
    	t.integer :question_five, default: 5
      t.timestamps null: false
    end
  end
end

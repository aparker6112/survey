class AddNameToSurvey < ActiveRecord::Migration
  def change
  	add_column :questions, :name, :string
  end
end

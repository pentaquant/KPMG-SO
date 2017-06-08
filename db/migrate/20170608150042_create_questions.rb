class CreateQuestions < ActiveRecord::Migration
  def change
      create_table :users do |t|
      t.string :question
      
      t.timestamps
  end
  end
end

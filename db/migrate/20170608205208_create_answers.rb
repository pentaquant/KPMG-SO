class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answer do |t|
      t.string :answer

      t.timestamps
    end
  end
end

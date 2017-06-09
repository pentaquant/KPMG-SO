class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :votable_id
      t.string :votable_type
      t.references :user
      t.references :comment
      t.references :answer
      t.references :questions

      t.timestamps
    end
  end
end

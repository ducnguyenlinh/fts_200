class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.integer :user_id
      t.integer :sub_id
      t.integer :minimum_score

      t.timestamps
    end
  end
end

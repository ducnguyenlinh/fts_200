class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.integer :test_id
      t.integer :answer_id
      t.boolean :is_pass

      t.timestamps
    end
  end
end

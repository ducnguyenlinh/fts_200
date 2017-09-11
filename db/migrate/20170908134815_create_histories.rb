class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
      t.integer :user_id
      t.integer :course_id
      t.integer :subject_id, null: true
      t.string :content

      t.timestamps
    end
  end
end

class CreateUserSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :user_subjects do |t|
      t.integer :user_id
      t.integer :subject_id
      t.boolean :is_finish

      t.timestamps
    end
  end
end

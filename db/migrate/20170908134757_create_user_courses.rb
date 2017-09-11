class CreateUserCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :user_courses do |t|
      t.integer :cousre_id
      t.integer :user_id
      t.integer :status, default: 0

      t.timestamps
    end
  end
end

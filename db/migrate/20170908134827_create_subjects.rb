class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.integer :course_id
      t.datetime :component_time

      t.timestamps
    end
  end
end

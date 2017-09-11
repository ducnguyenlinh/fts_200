class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.integer :course_id
      t.string :content
      t.datetime :time

      t.timestamps
    end
  end
end

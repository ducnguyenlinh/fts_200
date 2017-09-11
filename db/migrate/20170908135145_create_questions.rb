class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :test_id
      t.integer :answer_id
      t.string :question_content

      t.timestamps
    end
  end
end

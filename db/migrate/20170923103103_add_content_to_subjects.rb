class AddContentToSubjects < ActiveRecord::Migration[5.1]
  def change
    add_column :subjects,  :content, :text
  end
end

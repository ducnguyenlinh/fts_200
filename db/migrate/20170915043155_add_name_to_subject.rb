class AddNameToSubject < ActiveRecord::Migration[5.1]
  def change
    add_column :subjects, :name, :string
    add_column :subjects, :description, :text

    rename_column :subjects, :component_time, :start_time
  end
end

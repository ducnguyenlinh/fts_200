class AddNameToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :link_image, :string
  end
end

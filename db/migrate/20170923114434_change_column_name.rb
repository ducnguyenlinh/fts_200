class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :tests, :sub_id, :subject_id
  end
end

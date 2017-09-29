class ChangeColumnResult < ActiveRecord::Migration[5.1]
  def change
    remove_column :results, :answer_id, :integer
  end
end

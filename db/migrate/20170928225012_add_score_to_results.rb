class AddScoreToResults < ActiveRecord::Migration[5.1]
  def change
    add_column :results,  :score, :integer
  end
end

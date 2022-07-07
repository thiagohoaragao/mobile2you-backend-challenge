class ChangeIdTypeToString < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :id, :string
  end
end

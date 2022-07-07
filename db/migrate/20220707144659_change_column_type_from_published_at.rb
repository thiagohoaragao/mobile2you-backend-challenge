class ChangeColumnTypeFromPublishedAt < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :published_at, :date
  end
end

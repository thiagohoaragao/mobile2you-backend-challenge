class AddColumsToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :title, :string
    add_column :movies, :genre, :string
    add_column :movies, :year, :string
    add_column :movies, :country, :string
    add_column :movies, :published_at, :string
    add_column :movies, :description, :string
  end
end

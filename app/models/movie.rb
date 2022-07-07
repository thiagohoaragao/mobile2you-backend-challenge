class Movie < ApplicationRecord
  validates :title, uniqueness: true
  def self.search(search)
    where('title like :search OR genre LIKE :search OR year like :search OR country like :search',
          search: "%#{search}%")
  end
end

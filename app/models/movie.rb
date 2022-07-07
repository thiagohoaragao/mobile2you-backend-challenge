class Movie < ApplicationRecord

  def self.search(search)
    where('title like :search OR genre LIKE :search OR year like :search OR country like :search',
          search: "%#{search}%")
  end

  def as_json(options = {})
    options[:except] ||= %i[created_at updated_at]
    super(options)
  end
end

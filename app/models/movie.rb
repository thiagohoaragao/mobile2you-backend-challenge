class Movie < ApplicationRecord
  validates :title, uniqueness: true

  def self.search(filter)
    query_string = []
    like_filter = {}
    filter.each do |key, value|
      if key != 'year'
        query_string << "#{key} LIKE :#{key}"
        like_filter[key.to_sym] = "%#{value}%"
      else
        query_string << "#{key} = :#{key}"
        like_filter[key.to_sym] = "#{value}"
      end
    end
    query_string = query_string.join(' and ')
    where(query_string, like_filter)
  end
end

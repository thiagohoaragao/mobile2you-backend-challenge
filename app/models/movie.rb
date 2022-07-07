class Movie < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :search_by_categories, against: %i[title genre year country published_at description]
end

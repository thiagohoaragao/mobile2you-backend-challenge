Rails.application.routes.draw do
  root to: 'movies#find'
  get '/movies', to: 'movies#find', as: 'find'
  get '/movies/:id', to: 'movies#find_by_id', as: 'find_by_id'
end

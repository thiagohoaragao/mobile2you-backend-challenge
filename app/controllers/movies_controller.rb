class MoviesController < ApplicationController
  def index
    @movies = params[:query].present? ? Movie.search(params[:query]) : Movie.all.order(year: :desc)
  end
end

class MoviesController < ApplicationController
  def find
    @movies = params[:query].present? ? Movie.search(params[:query]) : Movie.all.order(year: :desc)
    render json: @movies
  end

  def find_by_id
  end
end

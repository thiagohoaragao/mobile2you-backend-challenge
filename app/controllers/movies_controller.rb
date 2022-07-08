class MoviesController < ApplicationController
  def find
    filter = params.slice(:year, :title, :genre, :country)
    if !filter.empty?
      @movies = Movie.search(filter).order(year: :desc)
    else
      @movies = Movie.all.order(year: :desc)
    end
    render json: @movies
  end

  def find_by_id
    @movies = Movie.find(params[:id].to_s)
    render json: @movies
  end
end

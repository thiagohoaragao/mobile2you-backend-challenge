class MoviesController < ApplicationController
  def find
    limit = params[:limit] || 100
    offset = params[:offset] || 0
    filter = params.slice(:year, :title, :genre, :country)
    if !filter.empty?
      @movies = Movie.search(filter).order(year: :desc).limit(limit).offset(offset)
    else
      @movies = Movie.all.order(year: :desc).limit(limit).offset(offset)
    end
    render json: @movies
  end

  def find_by_id
    @movies = Movie.find(params[:id].to_s)
    render json: @movies
  end
end

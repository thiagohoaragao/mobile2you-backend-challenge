class MoviesController < ApplicationController
  def index
    # if params[:query].present?
      # @movies = Movie.global_search(params[:query]).paginate(params[:page]).per(2)
    # else
    #   @movies = Movie.page(params[:page]).per(2)
  end
end

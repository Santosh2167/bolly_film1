class MoviesController < ApplicationController
  def index
  end

  def show
  end

  def create
    render json => params
  end

  def new
    @movie = Movie.new
  end

  def update
  end

  def edit
  end

  def destroy
  end
end

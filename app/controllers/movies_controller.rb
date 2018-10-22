class MoviesController < ApplicationController
  def index
    @movie33 = Movie.all
  end

  def show
    @movie1 = Movie.find(params[:id])
  end

  def create
    # render json: params[:movie]
    @movie = Movie.new(save_data)
    @movie.save

    redirect_to @movie
  end

  private def save_data
    params.require(:movie).permit(:title,:runtime,:genre,:release_date)

  end

  def new
    @movie = Movie.new
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(save_data)

    redirect_to @movie
  end

  def edit
    @movie = Movie.find(params[:id])
    # render json: @movie
  end

  def destroy
    render json: params
  end
end

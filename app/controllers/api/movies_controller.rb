class Api::MoviesController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def show
    @movie = Movie.find(params[:id])
    render 'show.html.erb' 
  end

  def index
    @movies = Movie.all
    render 'index.json.jb'
  end

  def create
    @movie = Movie.new(
        title: params[:title],
        year: params[:year],
        plot: params[:plot],
        director: params[:director],
        english: params[:english]
      )
    if @movie.save 
      render 'show.json.jb'
    else
      render json: {errors: @movie.errors.full_messages},
      status: :unprocessable_entity
    end
  end

  def update
    @movie = Movie.new(
       title: params[:title] || @movie.title,
        year: params[:year] || @movie.year,
        plot: params[:plot] || @movie.plot,
        director: params[:director] || @movie.director,
        english: params[:english] || @movie.english
      )
    if @movie.save 
      render 'show.json.jb'
    else
      render json: {errors: @movie.errors.full_messages},
      status: :unprocessable_entity
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    render json: {message: "This contact has been destroyed!"}
  end
end

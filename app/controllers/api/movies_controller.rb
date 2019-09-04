class Api::MoviesController < ApplicationController

  def show
    @movie = Movie.find(params[:id])
    render 'show.json.jb' 
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
    @movie.save 
    render 'create.json.jb'
  end

  def update
    @movie = Movie.new(
       title: params[:title] || @movie.title,
        year: params[:year] || @movie.year,
        plot: params[:plot] || @movie.plot,
        director: params[:director] || @movie.director,
        english: params[:english] || @movie.english
      )
    @movie.save
    render 'update.json.jb'
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    render json: {message: "This contact has been destroyed!"}
  end
end

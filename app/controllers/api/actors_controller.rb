class Api::ActorsController < ApplicationController

  def show
    @actor = Actor.find(params[:id])
    render 'show.json.jb' 
  end

  def index
    @actors = Actor.all
    render 'index.json.jb'
  end

  def create
    @actor = Actor.new(
        first_name: params[:first_name],
        last_name: params[:last_name],
        known_for: params[:known_for],
        gender: params[:gender],
        age: params[:age],
        movie_plot: params[:movie_plot]
      )
    if @actor.save 
      render 'show.json.jb'
    else
      render json: {errors: @actor.errors.full_messages},
      status: :unprocessable_entity
    end
  end

  def update
    @actor = Actor.new(
       first_name: params[:first_name] || @actor.first_name,
        last_name: params[:last_name] || @actor.last_name,
        known_for: params[:known_for] || @actor.known_for,
        gender: params[:gender] || @actor.gender,
        age: params[:age] || @actor.age,
        movie_plot: params[:movie_plot] || @actor.movie_plot
      )
    if @actor.save 
      render 'show.json.jb'
    else
      render json: {errors: @actor.errors.full_messages},
      status: :unprocessable_entity
    end
  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
    render json: {message: "This contact has been destroyed!"}
  end
end

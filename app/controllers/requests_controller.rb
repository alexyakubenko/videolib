class RequestsController < ApplicationController
  def new_last_movies
  end

  def show_last_movies
    @movies = Movie.where ["year >= ?", params[:year_from]]
    render "movies/index"
  end

  def new_genre_search
  end

  def show_genre_search
    @movies = Movie.joins(:movie_genres).where(["movie_genres.percentage >= ?", params[:percentage_from]]).uniq
    render "movies/index"
  end

  def new_involve_search
  end

  def show_involve_search
    @actors = Actor.joins(:movie_actors).where(["movie_actors.involve_id = ?", params[:actor][:involve]]).uniq
    render "actors/index"
  end
end

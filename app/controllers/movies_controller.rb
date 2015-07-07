class MoviesController < ApplicationController

  def index
    @movies = movie_data
  end

  def show
    @movie = movie_data.first
    @movie.download_details
  end

  def movie_data
    return [
      Movie.new('tt0112384', "Apollo 13", 1995),
      Movie.new('tt0076759', "Star Wars", 1977),
      Movie.new('tt0162222', "Cast Away", 2000),
      Movie.new('tt0082971', "Raiders of the Lost Ark", 1981),
      Movie.new('tt0114709', "Toy Story", 1995),
      Movie.new('tt0107290', "Jurassic Park", 1993),
      Movie.new('tt0362227', "The Terminal", 2004)
    ]
  end

end

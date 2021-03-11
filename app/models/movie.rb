class Movie < ApplicationRecord
  has_many :providers, through: :movie_providers
  has_many :game_movie
  has_many :genre, through: :genre_movies

  #enum watch_type: [:film, :serie]
end

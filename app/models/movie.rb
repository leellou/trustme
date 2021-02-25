class Movie < ApplicationRecord
  has_many :providers, through: :movie_providers
  has_many :game_movie

  enum watch_type: [:film, :serie]
end

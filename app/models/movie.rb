class Movie < ApplicationRecord
  has_many :providers, through: :movie_providers
  has_many :games
end

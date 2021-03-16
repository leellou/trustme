class Movie < ApplicationRecord
  has_many :providers, through: :movie_providers
  has_many :genres
  belongs_to :game, dependent: :destroy
  #enum watch_type: [:film, :serie]
end

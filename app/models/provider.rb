class Provider < ApplicationRecord
  has_many :movie_providers, dependent: :destroy
  has_many :game_providers, dependent: :destroy

  validates :name, presence: true
end

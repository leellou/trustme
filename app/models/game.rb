class Game < ApplicationRecord
  belongs_to :user
  has_many :participations
  has_one :game_movie
  has_one :movie
  has_many :providers

  validates :token, presence: true, uniqueness: true

end

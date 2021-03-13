class Game < ApplicationRecord
  belongs_to :user
  has_many :participations, dependent: :destroy
  has_one :movie, dependent: :destroy
  has_many :game_providers, dependent: :destroy
  has_many :providers, through: :game_providers

  validates :token, presence: true, uniqueness: true

end

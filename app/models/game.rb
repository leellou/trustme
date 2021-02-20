class Game < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  has_many :participations
end

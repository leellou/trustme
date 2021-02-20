class GameMovie < ApplicationRecord
  belongs_to :game
  belongs_to :movie
end

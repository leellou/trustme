class GameProvider < ApplicationRecord
  belongs_to :game
  belongs_to :provider
end

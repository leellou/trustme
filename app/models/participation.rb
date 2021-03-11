class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :game

  belongs_to :original_language
  belongs_to :genre
end

class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :game

  belongs_to :original_language, optional: true
  belongs_to :genre, optional: true
end

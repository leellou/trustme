class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :game

  has_many :original_languages
  has_many :genres
end

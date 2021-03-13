class OriginalLanguage < ApplicationRecord
  has_many :movies
  has_many :participations
end

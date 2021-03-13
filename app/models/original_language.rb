class OriginalLanguage < ApplicationRecord
  has_many :movies, dependent: :destroy 
  has_many :participations, dependent: :destroy
end

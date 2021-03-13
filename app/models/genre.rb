class Genre < ApplicationRecord
  has_many :participations, dependent: :destroy
end

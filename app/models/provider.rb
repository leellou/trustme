class Provider < ApplicationRecord
  has_many :movie_providers

  validates :name, presence: true
end

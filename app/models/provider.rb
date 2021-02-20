class Provider < ApplicationRecord
  has_many :movie_providers
  has_many :user_providers

  validates :name, presence: true
end

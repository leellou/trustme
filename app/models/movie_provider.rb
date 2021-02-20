class MovieProvider < ApplicationRecord
  belongs_to :provider
  belongs_to :movie
end

class UserProvider < ApplicationRecord
  belongs_to :provider
  belongs_to :user
end

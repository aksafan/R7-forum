class Forum < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :subscriptions
  has_many :users, through: :subscriptions
end

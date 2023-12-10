class User < ApplicationRecord
  has_many :sessions, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :screen_name, presence: true, uniqueness: true
end

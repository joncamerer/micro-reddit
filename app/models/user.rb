class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name,     presence: true, length: { maximum: 50 },
                       uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password
end

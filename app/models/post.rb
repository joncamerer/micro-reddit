class Post < ApplicationRecord
  belongs_to :user
  has_many   :comments

  validates :title,   presence: true, length: { maximum: 255 }
  validates :body,    presence: true, length: { maximum: 20000 }
  validates :user_id, presence: true

end

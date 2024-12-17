class Post < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    validates :title, presence: true, length: { maximum: 30, message: "Must be no more than 20 characters in length"}
    validates :body, presence: true, length: { minimum: 5, message: "Must be at least 5 characters in length"}
    validates :user_id, presence: true, numericality: { only_integer: true }
end

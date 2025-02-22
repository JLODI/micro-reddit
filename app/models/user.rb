class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
    validates :username, presence: true, length: { maximum: 12, message: "must be no more than 12 characters in length" }
    validates :email, presence: true
    validates :password, presence: true, length: { minimum: 5, message: "must be atleast 5 characters in length"}
end

class Post < ApplicationRecord
    validates :title, presence: true, length: { maximum: 20, message: "Must be no more than 20 characters in length"}
    validates :body, presence: true, length: { minimum: 5, message: "Must be at least 5 characters in length"}
end

class Comment < ApplicationRecord
    belongs_to :post
    belongs_to :user
    validates :body, presence: true, length: { minimum: 5, message: "must be atleast 5 characters in length"}
end

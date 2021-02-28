class Review < ApplicationRecord
    belongs_to :teacher
    belongs_to :user

    validates :text, presence: true
    validates :rating, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 5, message: "must be a number between 0 and 5"}
end

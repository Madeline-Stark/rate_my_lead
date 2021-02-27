class Review < ApplicationRecord
    belongs_to :teacher
    belongs_to :user

    validates :text, :rating, presence: true
end

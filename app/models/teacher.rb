class Teacher < ApplicationRecord
    belongs_to :creator, foreign_key: :user_id, class_name: "User", optional: true #optional means parent not required
    has_many :reviews
    has_many :critics, through: :reviews, source: :user

    validates :name, presence: true
end

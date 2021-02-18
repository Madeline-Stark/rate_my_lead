class User < ApplicationRecord
    has_secure_password 

    has_many :created_teachers, class_name: "Teacher"
    has_many :reviews, dependent: :destroy
    has_many :reviewed_teachers, through: :reviews, source: :teacher
end

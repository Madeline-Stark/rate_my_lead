class User < ApplicationRecord
    has_secure_password 

    has_many :created_teachers, class_name: "Teacher"
    has_many :reviews, dependent: :destroy
    has_many :reviewed_teachers, through: :reviews, source: :teacher

    validates :email, presence: true, uniqueness: true 

    def self.create_from_omniauth(auth)
        User.find_or_create_by(uid: auth['uid']) do |u|
          u.username = auth['info']['first_name']
          u.email = auth['info']['email']
          u.password = SecureRandom.hex(16) 
         end
    end 
end

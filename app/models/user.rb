class User < ApplicationRecord
    has_secure_password

    has_many :expeiences
    has_many :concerts, though: :experiences
end

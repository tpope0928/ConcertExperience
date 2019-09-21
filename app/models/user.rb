class User < ApplicationRecord
    

    has_many :expeiences
    has_many :concerts, though: :experience
end

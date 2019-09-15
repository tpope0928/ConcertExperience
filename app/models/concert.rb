class Concert < ApplicationRecord
    has_many :experiences
    has_many :artists
    has_many :users, through: :experiences
end

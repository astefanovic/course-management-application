class Coordinator < ApplicationRecord
    has_many :votes
    has_many :courses

    has_secure_password
end

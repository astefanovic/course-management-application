class Location < ApplicationRecord
    validates(:code, presence: true)
    has_and_belongs_to_many :courses
end

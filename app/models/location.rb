class Location < ApplicationRecord
    validates(:code, presence: true)
end

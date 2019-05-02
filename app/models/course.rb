class Course < ApplicationRecord
    has_and_belongs_to_many :locations, dependent: :destroy
    has_and_belongs_to_many :categories, dependent: :destroy
    
    validates :categories, presence: true
    validates :locations, presence: true
end

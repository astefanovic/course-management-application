class Course < ApplicationRecord
    has_and_belongs_to_many :locations, dependent: :destroy
    has_and_belongs_to_many :categories, dependent: :destroy
    has_many :votes, dependent: :destroy
    belongs_to :coordinators, optional: true

    mount_uploader :image, ImageUploader
    serialize :image, JSON

    validates :name,
        presence: true,
        length: { minimum: 10 }
    validates :description,
        presence: true,
        length: { minimum: 30 }
    validates :locations,
        presence: true
    validates :categories,
        presence: true
end

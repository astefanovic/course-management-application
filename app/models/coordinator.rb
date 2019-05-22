class Coordinator < ApplicationRecord
    has_many :votes
    has_many :courses

    validates :name,
        presence: true,
        length: { minimum: 4 }
    
    validates :email,
        presence: true,
        length: { minimum: 4 },
        uniqueness: { case_sensitive: false },
        format: {
            with: /\A\w+\.\w+@rmit.edu.au\z/i,
            message: "Registration is only open to RMIT coordinators"
        }
    
    validates :password,
        presence: true,
        format: {
            with: /\A^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}/,
            message: "Password must contain at least: lowercase and uppercase letters, digits, special chars and a length of 8+"
        }

    validates :password_confirmation,
        presence: true

    has_secure_password

end

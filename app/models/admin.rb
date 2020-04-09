class Admin < ApplicationRecord
    has_secure_password
    has_many :gigs
    has_many :lessons
end

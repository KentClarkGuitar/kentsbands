class User < ApplicationRecord
    has_secure_password
    has_many :bands
    has_many :favorites
    has_many :favorite_bands, through: :favorites, source: :band
end



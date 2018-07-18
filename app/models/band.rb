class Band < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites, source: :user
  has_many :performances, dependent: :destroy
end

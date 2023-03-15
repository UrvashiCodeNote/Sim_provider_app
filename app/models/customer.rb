class Customer < ApplicationRecord
  has_one_attached :aadhaar
  has_many :addresses, as: :addressable
  has_many :serviceproviders
  has_many :contactbooks
end

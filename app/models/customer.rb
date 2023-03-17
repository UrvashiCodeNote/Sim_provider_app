class Customer < ApplicationRecord
  has_one_attached :aadhaar
  has_many :addresses, as: :addressable
  has_many :service_providers
  has_many :contact_books
end

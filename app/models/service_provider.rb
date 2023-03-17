class ServiceProvider < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :addresses, as: :addressable
         belongs_to :customer, optional: true
         has_many :contact_books
end

class Store < ApplicationRecord
  has_and_belongs_to_many :products

  validates :name, presence: true
  validates :street, presence: true
  validates :number, presence: true
  validates :zipcode, presence: true
  validates :city, presence: true
  validates :country, presence: true
end

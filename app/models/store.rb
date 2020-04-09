class Store < ApplicationRecord
  has_and_belongs_to_many :products
  has_many :categories, through: :products 
  has_many :keywords, through: :categories 

  validates :name, presence: true
  validates :street, presence: true
  validates :number, presence: true
  validates :zipcode, presence: true
  validates :city, presence: true
  validates :country, presence: true
end

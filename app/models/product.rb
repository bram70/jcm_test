class Product < ApplicationRecord
  has_and_belongs_to_many :stores, :dependent => :delete
  belongs_to :category 
  has_many :keywords, through: :category

  validates :name, presence: true
  validates :color, presence: true
  validates :size, presence: true, numericality: {:greater_than => 0}
  validates :price, presence: true, numericality: {:greater_than => 0}
end

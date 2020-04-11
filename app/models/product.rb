class Product < ApplicationRecord
  has_and_belongs_to_many :stores, :dependent => :delete
  belongs_to :category, optional: true
  SIZE_TYPES = ["x-small", "small", "medium", "large", "x-large"]

  validates :name, presence: true
  validates :color, presence: true
  validates :size, presence: true
  validates :price, presence: true, numericality: {:greater_than => 0}
end

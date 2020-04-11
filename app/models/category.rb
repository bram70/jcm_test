class Category < ApplicationRecord
  has_many :keywords, dependent: :delete_all
  has_many :products
  validates :name, presence: true
end

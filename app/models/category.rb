class Category < ApplicationRecord
  has_many :keywords
  validates :name, presence: true
end

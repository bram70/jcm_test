class Category < ApplicationRecord
  has_many :keywords, dependent: :delete_all
  validates :name, presence: true
  validates :keywords, presence: true
end

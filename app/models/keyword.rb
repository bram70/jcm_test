class Keyword < ApplicationRecord
  belongs_to :category, optional: true
end

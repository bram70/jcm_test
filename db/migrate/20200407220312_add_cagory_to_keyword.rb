class AddCagoryToKeyword < ActiveRecord::Migration[6.0]
  def change
    add_reference :keywords, :category, null: false, foreign_key: true
  end
end

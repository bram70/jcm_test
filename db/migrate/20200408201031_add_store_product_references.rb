class AddStoreProductReferences < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :category, null: true, foreign_key: true, on_delete: :cascade
  end
end

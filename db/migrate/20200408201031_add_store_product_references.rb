class AddStoreProductReferences < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :categories, null: false, foreign_key: true, on_delete: :cascade
  end
end

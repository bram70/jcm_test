class CreateJoinTableStoresProducts < ActiveRecord::Migration[6.0]
  def change
    create_join_table :products, :stores do |t|
      # t.index [:product_id, :store_id]
      # t.index [:store_id, :product_id]
    end
  end
end

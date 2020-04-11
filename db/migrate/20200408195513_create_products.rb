class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :color
      t.string :size
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end

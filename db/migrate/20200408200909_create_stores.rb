class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.text :street
      t.string :number
      t.string :zipcode
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end

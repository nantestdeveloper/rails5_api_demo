class CreateRentalProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :rental_properties do |t|
      t.string :name
      t.string :address
      t.integer :rooms
      t.integer :bathrooms
      t.integer :price_cents

      t.timestamps
    end
  end
end

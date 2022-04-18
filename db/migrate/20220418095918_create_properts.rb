class CreateProperts < ActiveRecord::Migration[6.0]
  def change
    create_table :properts do |t|
      t.references :account
      t.string :name
      t.string :address
      t.integer :price
      t.integer :rooms
      t.integer :bathrooms
      t.integer :photo

      t.timestamps
    end
  end
end

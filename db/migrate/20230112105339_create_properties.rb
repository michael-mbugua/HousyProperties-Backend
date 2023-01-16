class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :propertyName
      t.string :property_type
      t.string :unit_type
      t.string :location
      t.string :image
      t.integer :amount
      t.boolean :wifi
      t.boolean :shower
      t.boolean :balcony
      t.boolean :parking

      t.timestamps
    end
  end
end

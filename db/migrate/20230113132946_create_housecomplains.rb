class CreateHousecomplains < ActiveRecord::Migration[7.0]
  def change
    create_table :housecomplains do |t|
      t.string :Name
      t.integer :Phone ,:limit => 8
      t.string :Email
      t.string :HouseType
      t.text :complain
      t.integer :property_id
      t.timestamps
    end
  end
end

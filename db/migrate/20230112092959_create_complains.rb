class CreateComplains < ActiveRecord::Migration[7.0]
  def change
    create_table :complains do |t|
      t.string :Name
      t.string :Phone
      t.string :Email
      t.string :HouseType
      t.integer :HouseNo
      t.text :complain

      t.timestamps
    end
  end
end

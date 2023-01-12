class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :Name
      t.string :Email
      t.integer :Phone
      t.string :Password
      t.timestamps
    end
  end
end

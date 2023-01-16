class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :Name
      t.integer :amount
      t.integer :PhoneNumber ,:limit => 8
      t.integer :property_id

      t.timestamps
    end
  end
end

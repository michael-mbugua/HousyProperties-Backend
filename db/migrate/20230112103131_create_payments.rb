class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :Name
      t.integer :HouseNo
      t.integer :amount

      t.timestamps
    end
  end
end

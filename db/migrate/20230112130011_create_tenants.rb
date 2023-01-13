class CreateTenants < ActiveRecord::Migration[7.0]
  def change
    create_table :tenants do |t|
      t.string :name
      t.integer :house_no
      t.integer :phone_no
      t.string :unit_type
      t.string :date_in
      t.integer :balance_due
      t.integer :property_id
      t.timestamps
    end
  end
end

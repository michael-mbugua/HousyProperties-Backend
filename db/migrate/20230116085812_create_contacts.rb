class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :Name
      t.string :Email
      t.integer :phone 
      t.string :message
      t.timestamps
    end
  end
end

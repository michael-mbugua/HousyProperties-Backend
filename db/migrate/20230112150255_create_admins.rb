class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :Name
      t.string :Email
      t.integer :Phone ,:limit => 8
      t.string :password_digest

      t.timestamps
    end
  end
end

class AddColumnToHousecomplain < ActiveRecord::Migration[7.0]
  def change
    add_column :housecomplains, :location, :string
    add_column :housecomplains, :unitType, :string
  end
end

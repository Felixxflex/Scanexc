class AddTotalscans < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :total_scans, :integer
    add_column :cafeandbars, :total_scans, :integer
    add_column :locals, :total_scans, :integer
    add_column :restaurants, :total_scans, :integer
  end
end

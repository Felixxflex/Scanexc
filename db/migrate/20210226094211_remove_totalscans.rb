class RemoveTotalscans < ActiveRecord::Migration[6.0]
  def change
    remove_column :stores, :total_scans
    remove_column :restaurants, :total_scans
    remove_column :locals, :total_scans
    remove_column :cafeandbars, :total_scans
  end
end

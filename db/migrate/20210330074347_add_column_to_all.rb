class AddColumnToAll < ActiveRecord::Migration[6.0]
  def change
    remove_column :stores, :promotion_photos
    remove_column :restaurants, :promotion_photos
    remove_column :locals, :promotion_photos
    remove_column :cafeandbars, :promotion_photos
  end
end

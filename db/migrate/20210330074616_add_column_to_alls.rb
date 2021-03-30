class AddColumnToAlls < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :promotion_photos, :text, array: true, default: []
    add_column :restaurants, :promotion_photos, :text, array: true, default: []
    add_column :locals, :promotion_photos, :text, array: true, default: []
    add_column :cafeandbars, :promotion_photos, :text, array: true, default: []
  end
end

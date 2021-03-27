class AddCategoryToStores < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :business_category, :string
    add_column :restaurants, :business_category, :string
    add_column :cafeandbars, :business_category, :string
    add_column :locals, :business_category, :string
  end
end

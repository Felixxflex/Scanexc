class AddBusinessstitle < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :business_title, :string
    add_column :cafeandbars, :business_title, :string
    add_column :locals, :business_title, :string
    add_column :restaurants, :business_title, :string
  end
end

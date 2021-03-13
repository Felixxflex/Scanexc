class AddCusineDeliveryPriceToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :cusine, :string
    add_column :restaurants, :price, :string
    add_column :restaurants, :delivery, :string
  end
end

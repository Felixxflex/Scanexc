class AddStocktwoToTech < ActiveRecord::Migration[6.0]
  def change
    add_column :technologies, :stock, :integer, default: 0
  end
end

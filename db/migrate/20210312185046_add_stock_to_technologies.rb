class AddStockToTechnologies < ActiveRecord::Migration[6.0]
  def change
    add_column :technologies, :stock, :integer
  end
end

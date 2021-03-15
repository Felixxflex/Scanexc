class RemoveStock < ActiveRecord::Migration[6.0]
  def change
    remove_column :technologies, :stock
  end
end

class AddColToStore < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :mondaytime, :string
    add_column :stores, :thuesdaytime, :string
    add_column :stores, :wednesdaytime, :string
    add_column :stores, :thursdaytime, :string
    add_column :stores, :fridaytime, :string
    add_column :stores, :saturdaytime, :string
    add_column :stores, :sundaytime, :string
  end
end

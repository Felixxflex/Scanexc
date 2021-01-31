class AddWinToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :winpoints, :integer, :default => 0
  end
end

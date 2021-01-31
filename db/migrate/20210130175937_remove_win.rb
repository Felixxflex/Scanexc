class RemoveWin < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :winpoints
  end
end

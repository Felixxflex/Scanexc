class DestroySports < ActiveRecord::Migration[6.0]
  def change
    drop_table :sports
  end
end

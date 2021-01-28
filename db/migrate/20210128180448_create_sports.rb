class CreateSports < ActiveRecord::Migration[6.0]
  def change
    create_table :sports do |t|
      t.string :title
      t.text :description
      t.integer :points
      t.string :photo, array: true
      
      t.timestamps
    end
  end
end
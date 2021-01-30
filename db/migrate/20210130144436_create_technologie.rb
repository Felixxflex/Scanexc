class CreateTechnologie < ActiveRecord::Migration[6.0]
  def change
    create_table :technologies do |t|
      t.string :title
      t.text :description
      t.integer :points
      t.string :photo, array: true

      t.timestamps
    end
  end
end

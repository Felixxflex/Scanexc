class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.integer :points

      t.timestamps
    end
  end
end

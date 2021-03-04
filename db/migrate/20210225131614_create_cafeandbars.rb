class CreateCafeandbars < ActiveRecord::Migration[6.0]
  def change
    create_table :cafeandbars do |t|
      t.string :business_address
      t.text :business_description
      t.integer :business_rating
      t.integer :business_founding
      t.integer :business_stores
      t.string :business_website
      t.integer :business_number
      t.string :business_card
      t.string :total_scans
      t.string :business_image, array: true
      t.string :business_opening

      t.timestamps
    end
  end
end

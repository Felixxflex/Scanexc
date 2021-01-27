class AddPhotoToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :photo, :string, array: true
  end
end

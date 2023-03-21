class CreateListingSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :listing_searches do |t|
      t.references :Listing, null: false, foreign_key: true
      t.references :Search, null: false, foreign_key: true

      t.timestamps
    end
  end
end

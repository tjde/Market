class RemoveCityFromListing < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :city, :string
  end
end

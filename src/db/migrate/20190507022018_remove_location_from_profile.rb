class RemoveLocationFromProfile < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :location, :string
  end
end

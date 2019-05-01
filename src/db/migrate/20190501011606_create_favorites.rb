class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :listing, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end

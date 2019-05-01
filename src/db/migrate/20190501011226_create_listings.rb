class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.references :profile, foreign_key: true
      t.references :hobby, foreign_key: true
      t.text :description
      t.string :location
      t.date :date
      t.string :city
      t.integer :equipment
      t.integer :capacity

      t.timestamps
    end
  end
end

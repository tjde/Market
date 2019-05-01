class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.string :age_bracket
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end

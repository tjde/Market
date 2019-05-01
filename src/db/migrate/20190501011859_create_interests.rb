class CreateInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :interests do |t|
      t.references :profile, foreign_key: true
      t.references :hobby, foreign_key: true

      t.timestamps
    end
  end
end

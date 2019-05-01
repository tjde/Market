class CreateAttendees < ActiveRecord::Migration[5.2]
  def change
    create_table :attendees do |t|
      t.references :listing, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end

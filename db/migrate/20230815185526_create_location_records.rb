class CreateLocationRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :location_records do |t|
      t.string :ip_address
      t.float :latitude
      t.float :longitude
      t.datetime :recorded_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

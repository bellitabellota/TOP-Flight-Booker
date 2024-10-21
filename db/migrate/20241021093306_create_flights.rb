class CreateFlights < ActiveRecord::Migration[7.2]
  def change
    create_table :flights do |t|
      t.references :departure_airport, null: false, foreign_key: true
      t.references :arrival_airport, null: false, foreign_key: true
      t.datetime :start_datetime
      t.integer :duration_minutes

      t.timestamps
    end
  end
end

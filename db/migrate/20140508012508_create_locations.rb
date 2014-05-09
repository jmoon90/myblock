class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name, null: false
      t.text :address, null: false
      t.references :itinerary

      t.timestamps
    end
  end
end

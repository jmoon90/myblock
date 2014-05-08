class CreateItinerary < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.text :title, null: false
      t.integer :user_id
      t.integer :location_id

      t.timestamps
    end
  end
end

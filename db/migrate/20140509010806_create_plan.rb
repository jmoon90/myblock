class CreatePlan < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.references :itinerary, index: true, null: false
      t.references :location, index: true, null: false

      t.timestamp
    end
  end
end

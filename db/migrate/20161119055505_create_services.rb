class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.boolean :refreshments
      t.boolean :sound
      t.boolean :roadies
      t.boolean :lights
      t.boolean :website
      t.boolean :service_events
      t.boolean :usher
      t.boolean :kids
      t.boolean :slides
      t.boolean :service_slices
      t.string :music
      t.string :other

      t.timestamps
    end
  end
end

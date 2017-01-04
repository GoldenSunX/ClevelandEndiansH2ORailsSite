class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.boolean :email_list
      t.boolean :teams
      t.boolean :family
      t.boolean :international
      t.boolean :well
      t.boolean :mission
      t.boolean :leadership
      t.boolean :community
      t.boolean :baptisms
      t.string :other
      t.boolean :journey

      t.timestamps
    end
  end
end

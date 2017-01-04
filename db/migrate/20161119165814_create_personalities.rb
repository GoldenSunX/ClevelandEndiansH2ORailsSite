class CreatePersonalities < ActiveRecord::Migration[5.0]
  def change
    create_table :personalities do |t|
      t.string :gender
      t.string :year
      t.boolean :greek
      t.boolean :international
      t.string :member
      t.string :source
      t.string :groups

      t.timestamps
    end
  end
end

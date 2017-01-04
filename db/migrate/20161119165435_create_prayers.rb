class CreatePrayers < ActiveRecord::Migration[5.0]
  def change
    create_table :prayers do |t|
      t.string :prayer
      t.string :comments

      t.timestamps
    end
  end
end

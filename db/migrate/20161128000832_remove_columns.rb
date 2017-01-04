class RemoveColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :contacts, :fname
    remove_column :contacts, :lname
  end
end

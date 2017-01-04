class AddContactForeignKeys < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :contact_id, :integer
    add_column :personalities, :contact_id, :integer
    add_column :prayers, :contact_id, :integer
    add_column :services, :contact_id, :integer
  end
end

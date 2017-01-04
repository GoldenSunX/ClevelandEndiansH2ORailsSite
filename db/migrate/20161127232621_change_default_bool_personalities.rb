class ChangeDefaultBoolPersonalities < ActiveRecord::Migration[5.0]
  def change
    change_column_default :personalities, :greek, false
    change_column_default :personalities, :international, false
  end
end

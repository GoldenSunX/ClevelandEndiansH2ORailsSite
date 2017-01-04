class ChangeDefaultBoolServices < ActiveRecord::Migration[5.0]
  def change
    change_column_default :services, :refreshments, false
    change_column_default :services, :sound, false
    change_column_default :services, :roadies, false
    change_column_default :services, :lights, false
    change_column_default :services, :website, false
    change_column_default :services, :service_events, false
    change_column_default :services, :refreshments, false
    change_column_default :services, :usher, false
    change_column_default :services, :kids, false
    change_column_default :services, :slides, false
    change_column_default :services, :service_slices, false
  end
end

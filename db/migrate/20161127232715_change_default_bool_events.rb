class ChangeDefaultBoolEvents < ActiveRecord::Migration[5.0]
  def change
    change_column_default :events, :email_list, false
    change_column_default :events, :teams, false
    change_column_default :events, :family, false
    change_column_default :events, :international, false
    change_column_default :events, :well, false
    change_column_default :events, :mission, false
    change_column_default :events, :leadership, false
    change_column_default :events, :community, false
    change_column_default :events, :baptisms, false
    change_column_default :events, :journey, false
  end
end

class ChangeEnglishToBoolean < ActiveRecord::Migration[6.0]
  def change
    change_column_default :movies, :english, true 
  end
end

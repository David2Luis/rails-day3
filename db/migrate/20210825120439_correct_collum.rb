class CorrectCollum < ActiveRecord::Migration[6.0]
  def change
    rename_column :restaurants, :anddress, :address
  end
end

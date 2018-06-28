class ChangeColumnNameDoses < ActiveRecord::Migration[5.2]
  def change
    rename_column :doses, :desciption, :description
  end
end

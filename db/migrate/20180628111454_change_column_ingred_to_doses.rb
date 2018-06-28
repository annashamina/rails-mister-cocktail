class ChangeColumnIngredToDoses < ActiveRecord::Migration[5.2]
  def change
    rename_column :doses, :ingridient_id, :ingredient_id
  end
end

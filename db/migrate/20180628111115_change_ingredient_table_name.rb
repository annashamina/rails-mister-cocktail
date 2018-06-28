class ChangeIngredientTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :ingridients, :ingredients
  end
end

class CreateDoses < ActiveRecord::Migration[5.2]
  def change
    create_table :doses do |t|
      t.text :desciption
      t.references :cocktail, foreign_key: true
      t.references :ingridient, foreign_key: true

      t.timestamps
    end
  end
end

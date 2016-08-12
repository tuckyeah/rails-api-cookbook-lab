class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.references :ingredient, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end

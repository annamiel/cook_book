class CreateIngridientsRecipes < ActiveRecord::Migration
  def change
    create_table :ingridients_recipes do |t|
      t.belongs_to :recipe, index: true, foreign_key: true
      t.belongs_to :ingridient, index: true, foreign_key: true
    end
  end
end

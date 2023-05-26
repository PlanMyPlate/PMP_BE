class CreateCalendarRecipe < ActiveRecord::Migration[7.0]
  def change
    create_table :calendar_recipes do |t|
      t.datetime :date
      t.string :mealtype
      t.references :recipe, null: false, foreign_key: true
      t.references :calendar, null: false, foreign_key: true

      t.timestamps
    end
  end
end

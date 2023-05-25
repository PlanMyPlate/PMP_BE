class CreateCalendarEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :calendar_entries do |t|
      t.datetime :date
      t.string :meal_type
      t.references :user_recipe_id, null: false, foreign_key: true
      t.references :calendar_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end

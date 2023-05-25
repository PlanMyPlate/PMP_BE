class CreateRecipe < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :directions
      t.string :ingredients

      t.timestamps
    end
  end
end

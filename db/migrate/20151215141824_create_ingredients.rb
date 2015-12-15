class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :title
      t.string :description
      t.text :image

      t.timestamps null: false
    end
  end
end

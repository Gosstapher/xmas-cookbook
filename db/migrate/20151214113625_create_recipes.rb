class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.text :ingredients
      t.text :method
      t.text :image
      t.integer :category_id

      t.timestamps null: false
    end
  end
end

class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :brewery_name
      t.text :about
      t.references :brew_type, index: true
      t.references :standard, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :recipes, :brew_types
    add_foreign_key :recipes, :standards
    add_foreign_key :recipes, :users
  end
end

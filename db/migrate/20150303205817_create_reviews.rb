class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.references :recipe, index: true
      t.references :batch, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :reviews, :recipes
    add_foreign_key :reviews, :batches
    add_foreign_key :reviews, :users
  end
end

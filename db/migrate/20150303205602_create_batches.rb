class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.integer :size
      t.string :brew_dt
      t.string :primary_dt
      t.string :secondary_dt
      t.string :ferm_fin_dt
      t.string :bttle_dt
      t.references :standard, index: true
      t.references :recipe, index: true

      t.timestamps null: false
    end
    add_foreign_key :batches, :standards
    add_foreign_key :batches, :recipes
  end
end

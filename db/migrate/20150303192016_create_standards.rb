class CreateStandards < ActiveRecord::Migration
  def change
    create_table :standards do |t|
      t.string :style
      t.string :color
      t.string :aroma
      t.string :taste
      t.text :description

      t.timestamps null: false
    end
  end
end

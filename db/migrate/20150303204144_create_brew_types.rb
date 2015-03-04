class CreateBrewTypes < ActiveRecord::Migration
  def change
    create_table :brew_types do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end

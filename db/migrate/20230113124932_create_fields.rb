class CreateFields < ActiveRecord::Migration[7.0]
  def change
    create_table :fields do |t|
      t.string :name
      t.string :location
      t.string :indoor_outdoor
      t.integer :capacity
      t.integer :price_per_hour
      t.references :club, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateFieldSports < ActiveRecord::Migration[7.0]
  def change
    create_table :field_sports do |t|
      t.references :field, null: false, foreign_key: true
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end

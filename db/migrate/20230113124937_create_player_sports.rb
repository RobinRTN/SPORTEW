class CreatePlayerSports < ActiveRecord::Migration[7.0]
  def change
    create_table :player_sports do |t|
      t.references :player, null: false, foreign_key: true
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end

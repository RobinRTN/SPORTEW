class CreatePlayerBadges < ActiveRecord::Migration[7.0]
  def change
    create_table :player_badges do |t|
      t.references :player, null: false, foreign_key: true
      t.references :badge, null: false, foreign_key: true

      t.timestamps
    end
  end
end

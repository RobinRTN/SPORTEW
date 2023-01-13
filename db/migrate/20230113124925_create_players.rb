class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.integer :age
      t.string :location
      t.integer :bookings_count
      t.string :phone_number
      t.string :type, null: false, default: 'Player'
      t.belongs_to :player_level, index: true
      t.references :user, foreign_key: true, index: true
      t.timestamps
    end
  end
end

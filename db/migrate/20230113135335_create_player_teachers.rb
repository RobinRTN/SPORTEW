class CreatePlayerTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :player_teachers do |t|
      t.references :player, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end

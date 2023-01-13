class CreateClubTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :club_teachers do |t|
      t.references :club, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end

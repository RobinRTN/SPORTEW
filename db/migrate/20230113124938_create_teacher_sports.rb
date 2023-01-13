class CreateTeacherSports < ActiveRecord::Migration[7.0]
  def change
    create_table :teacher_sports do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end

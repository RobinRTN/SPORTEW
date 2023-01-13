class CreateClubFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :club_features do |t|
      t.references :club, null: false, foreign_key: true
      t.references :feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end

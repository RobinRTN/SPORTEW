class CreateClubs < ActiveRecord::Migration[7.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :price_point
      t.string :description
      t.string :phone_number
      t.string :website
      t.string :location
      t.string :payment_policy
      t.string :cancellation_policy
      t.string :type, null: false, default: 'Club'
      t.references :user, foreign_key: true, index: true
      t.timestamps
    end
  end
end

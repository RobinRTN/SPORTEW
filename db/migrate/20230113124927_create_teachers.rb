class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.integer :age
      t.string :location
      t.integer :bookings_count
      t.string :phone_number
      t.string :description
      t.string :payment_policy
      t.string :cancellation_policy
      t.integer :price_per_hour
      t.string :type, null: false, default: 'Teacher'
      t.belongs_to :teacher_level, index: true
      t.references :user, foreign_key: true, index: true
      t.timestamps
    end
  end
end

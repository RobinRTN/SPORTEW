class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.float :field_price
      t.string :teacher_price
      t.float :discount
      t.float :total_price
      t.string :promo_code
      t.string :notes
      t.string :status
      t.string :payment_method
      t.string :payment_status
      t.references :player, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true
      t.references :field, null: false, foreign_key: true

      t.timestamps
    end
  end
end

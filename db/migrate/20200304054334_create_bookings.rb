class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.string :pet_name
      t.string :phone_number
      t.string :email
      t.string :date
      t.string :description

      t.timestamps
    end
  end
end

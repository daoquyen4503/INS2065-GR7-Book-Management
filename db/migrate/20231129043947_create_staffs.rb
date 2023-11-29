class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string :full_name
      t.string :gender
      t.date :date_of_birth
      t.integer :citizen_id
      t.integer :phone_number
      t.string :address

      t.timestamps
    end
  end
end

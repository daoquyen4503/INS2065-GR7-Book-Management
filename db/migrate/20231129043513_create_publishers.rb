class CreatePublishers < ActiveRecord::Migration[7.0]
  def change
    create_table :publishers do |t|
      t.string :name
      t.string :address
      t.string :email
      t.integer :hotline

      t.timestamps
    end
  end
end

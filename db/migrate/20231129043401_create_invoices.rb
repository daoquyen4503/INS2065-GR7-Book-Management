class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :customer
      t.string :title
      t.integer :quantity
      t.float :total_price
      t.date :date

      t.timestamps
    end
  end
end

json.extract! invoice, :id, :customer, :title, :quantity, :total_price, :date, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)

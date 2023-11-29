class Staff < ApplicationRecord
    has_many :invoices
    
    validates_presence_of:name, :gender, :date_of_birth, :citizen_id, :phone_number, :address
    validates_numericality_of:citizen_id, :phone_number

    
end

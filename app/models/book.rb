class Book < ApplicationRecord
    belongs_to :publisher
    belongs_to :category
    has_many :invoices

    validates_presence_of:title, :author, :publisher, :category, :price, :status
    validates_numericality_of :price
end

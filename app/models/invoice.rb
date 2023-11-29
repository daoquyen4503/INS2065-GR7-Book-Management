class Invoice < ApplicationRecord

    belongs_to :customer
    belongs_to :staff
    has_many :books
    
    validates_presence_of:customer, :title, :quantity, :total_price, :date
    validates_numericality_of:quantity, :total_price


    validate :date_cannot_be_in_the_future
    def date_cannot_be_in_the_future
        errors.add(:date,"can't be in the future") if date.present? && date > Datetime.current
    end

    validate :quantity_must_be_positive
    def quantity_must_be_positive
        errors.add(:quantity,'must be greater than 0') if quantity.to_i <= 0
    end

    before_save :calculate_grand_total
    def calculate_grand_total
        self.total_price = price.to_f * quantity.to_i
    end
end

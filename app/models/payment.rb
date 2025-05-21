class Payment < ApplicationRecord
    validates :amount, :description, presence: true
    validates :amount, numericality: true
end

class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :customer

  validates :party_size, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 20 }
  validates :customer, uniqueness: { scope: :restaurant, message: "s can only reserve at the same restaurant once" }
  # validates :restaurant, uniqueness: { scope: :customer, message: "You can only reserve at the same restaurant once" }

  # validate :validate_num_for_price

  # def validate_num_for_price
  #   if self.price.class != Fixnum || self.price > 30
  #     # errors array -> [{price: "Needs to be a number less than 30"}]
  #     self.errors.add(:price, "Needs to be a number less than 30")
  #   end
  # end
end

class Book < ActiveRecord::Base
  has_many :collaborations # singular
  has_many :authors, through: :collaborations
end
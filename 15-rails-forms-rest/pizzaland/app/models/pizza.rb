class Pizza < ApplicationRecord
  validates :name, uniqueness: true
end

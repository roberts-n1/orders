# frozen_string_literal: true

class Bicycle < ApplicationRecord
  has_many :orders
  has_many :employees, through: :orders

  validates :manufacturer, :serial_number, presence: true, length: { minimum: 4, maximum: 20 }
end

# frozen_string_literal: true

class Employee < ApplicationRecord
  has_many :orders
  has_many :bicycles, through: :orders

  validates :name, :surname, presence: true, length: { minimum: 3, maximum: 20 }
end

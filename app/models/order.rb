# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :employee
  belongs_to :bicycle
end

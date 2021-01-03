# frozen_string_literal: true

class CreateBicycle < ActiveRecord::Migration[6.0]
  def change
    create_table :bicycles do |t|
      t.string :manufacturer
      t.string :serial_number
      t.timestamps
    end
  end
end

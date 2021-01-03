# frozen_string_literal: true

class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :surname
      t.timestamps
    end
  end
end

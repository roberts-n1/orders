# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :employee_id
      t.integer :bicycle_id
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end

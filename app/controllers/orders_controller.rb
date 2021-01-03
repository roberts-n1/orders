# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :set_order, only: %i[show edit update destroy]

  def show; end

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def edit; end

  def create
    @order = Order.new(order_params)
    if @order.save
      flash[:notice] = 'Order was created successfully.'
      redirect_to orders_path
    else
      render 'new'
    end
  end

  def update
    if @order.update(order_params)
      flash[:notice] = 'Order was updated successfully.'
      redirect_to orders_path
    else
      render 'edit'
    end
  end

  def destroy
    @order.destroy
    flash[:notice] = 'Order was deleted successfully.'
    redirect_to orders_path
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:employee_id, :bicycle_id, :start_time, :end_time)
  end
end

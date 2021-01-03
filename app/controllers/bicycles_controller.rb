# frozen_string_literal: true

class BicyclesController < ApplicationController
  before_action :set_bicycle, only: %i[show edit update destroy]

  def show; end

  def index
    @bicycles = Bicycle.all
  end

  def new
    @bicycle = Bicycle.new
  end

  def edit; end

  def create
    @bicycle = Bicycle.new(bicycle_params)
    if @bicycle.save
      flash[:notice] = 'Bicycle was created successfully.'
      redirect_to bicycles_path
    else
      render 'new'
    end
  end

  def update
    if @bicycle.update(bicycle_params)
      flash[:notice] = 'Bicycle was updated successfully.'
      redirect_to bicycles_path
    else
      render 'edit'
    end
  end

  def destroy
    @bicycle.destroy
    flash[:notice] = 'Bicycle was deleted successfully.'
    redirect_to bicycles_path
  end

  private

  def set_bicycle
    @bicycle = Bicycle.find(params[:id])
  end

  def bicycle_params
    params.require(:bicycle).permit(:manufacturer, :serial_number)
  end
end

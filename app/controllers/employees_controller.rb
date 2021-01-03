# frozen_string_literal: true

class EmployeesController < ApplicationController
  before_action :set_employee, only: %i[show edit update destroy]

  def show; end

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def edit; end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      flash[:notice] = 'Employee was created successfully.'
      redirect_to employees_path
    else
      render 'new'
    end
  end

  def update
    if @employee.update(employee_params)
      flash[:notice] = 'Employee was updated successfully.'
      redirect_to employees_path
    else
      render 'edit'
    end
  end

  def destroy
    @employee.destroy
    flash[:notice] = 'Employee was deleted successfully.'
    redirect_to employees_path
  end

  private

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:name, :surname)
  end
end

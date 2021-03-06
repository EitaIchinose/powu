class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.new(department_params)
    if @department.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    department = Department.find(params[:id])
    department.destroy
    redirect_to root_path
  end

  private

  def department_params
    params.require(:department).permit(:name)
  end
end

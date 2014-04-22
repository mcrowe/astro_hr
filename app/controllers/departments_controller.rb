class DepartmentsController < ApplicationController

  before_action :set_company, only: [:new, :create]
  before_action :set_department, only: [:show, :edit, :update, :destroy]

  def show
    categories
    @courses = Course.where("category_id IN (?)", @categories)
  end

  def new
    @department = @company.departments.build
  end

  def edit
  end

  def create
    @department = @company.departments.build(department_params)

    if @department.save
      redirect_to @department, notice: 'Department was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @department.update(department_params)
      redirect_to @department, notice: 'Department was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    company = @department.company
    @department.destroy
    redirect_to company, notice: 'Department was successfully destroyed.'
  end

  private

    def categories
       @categories = Category.joins("join categories_departments on categories.id = categories_departments.category_id").where(["categories_departments.department_id = ?", @department.id]).pluck(:id)
    end

    def set_company
      @company = Company.find(params[:company_id])
    end

    def set_department
      @department = Department.find(params[:id])
    end

    def department_params
      # NOTE: This is not secure. Please replace with something like below.
      # params.require(:department).permit(:name, :budget, :categories)
      params.require(:department).permit!
    end

end

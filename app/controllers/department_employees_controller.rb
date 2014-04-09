class DepartmentEmployeesController < ApplicationController
  def destroy
    department = Department.find(params[:department_id])
    employee = Employee.find(params[:id])
    employee.update!(department: nil)

    redirect_to department, notice: 'Employee successfully remove.'
  end
end

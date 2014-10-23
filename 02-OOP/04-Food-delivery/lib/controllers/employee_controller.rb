
require_relative '../models/employee'
require_relative '../views/employee_view'

class EmployeeController

  def initialize
    @employee_view = EmployeeView.new
  end

  def list_employees
    @employee_view.display_list_of_employees(employee)
  end

end

p manager_new = Manager.new("Michel", "1234", 42)
p guy_new = Employee.new("Gus","324", 33)

p manager_new.status
require_relative '../models/employee'
require_relative '../controllers/employee_controller'

class EmployeeView

  def display_list_of_employees(employees)
    puts "Voici la liste des employés:"
    employees.each do |employee|
      if employee
        puts "#{employee.name} is a manager."
      else
        puts "#{employee.name} is a delivery guy."
      end
      end
  end
end

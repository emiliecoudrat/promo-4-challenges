require 'csv'
require_relative '../models/employee'

class EmployeeDatabase

  attr_reader :employees

  def initialize
    @employees = []
  end

  def add_employee_to_db(employee)
    @employees << employee
  end

  def find_employee_from_id(id)
    @employees.select {|employee| employee.name if employee.id == id }
  end

end
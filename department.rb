class Department
  attr_accessor  :department_name, :department_salary, :add_employees
  def initialize(department_name, department_salary = "?")
    @department_name = department_name
    @department_salary = department_salary
    @departments = []
    @employees = []
  end

  def department (department)
    @departments << department
  end
end

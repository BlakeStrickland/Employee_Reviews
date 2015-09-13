class Department
  attr_accessor  :department_name, :department_salary
  def initialize(department_name, department_salary = "?")
    @department_name = department_name
    @department_salary = department_salary
    @departments = []
  end

  def department(department)
    @departments << department
  end

  def name
    @name
  end

  def employees(employees)
    @employees
  end
end

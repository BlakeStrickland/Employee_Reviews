class Department
  attr_reader :name, :department_name, :department_salary
  def initialize(department_name, name = "", department_salary = "")
    @department_name = department_name
    @name = name
    @department_salary = department_salary
    @total_departments = []
  end

  def department (department)

    @total_departments << department  

  end
end

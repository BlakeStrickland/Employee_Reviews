class Department
  attr_accessor  :department_name, :salary, :add_employees, :satisfactorily, :employees, :name
  def initialize(department_name, department_salary = 0)
    @department_name = department_name
    @department_salary = department_salary
    @employees = []
  end

  def add_employees(new_employee)
    @employees << new_employee
  end
  def department_salary
    total_salary = 0
      employees.each do |e|
      total_salary += e.salary
    end
    total_salary
  end

  # def raise_the_roof(name, raise_the_roof)
  #   if name.name == name  && name.sat == true
  #     name.salary = name.salary * raise_the_roof
  #   else
  #     return false
  #   end
  # end

end

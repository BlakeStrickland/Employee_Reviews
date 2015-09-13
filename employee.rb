class Employee
  attr_accessor :name, :email, :phone, :salary
  def initialize(name, email = "", phone = "", salary = "")
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @employees = []
  end

  def employees(new_employee)
    @employees << new_employee
  end

end

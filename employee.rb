class Employee
  attr_accessor :name, :email, :phone, :salary, :review
  def initialize(name, email = "", phone = "", salary = "", review = "")
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @review = review
  end

  def add_employees(new_employee)
    @employees << new_employee
  end


end

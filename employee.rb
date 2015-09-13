class Employee
  attr_accessor :name, :email, :phone, :salary, :review, :satisfactorily
  def initialize(name, email = "", phone = "", salary = "", review = "", satisfactorily = false)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @review = review
    @satisfactorily = satisfactorily
  end

  def add_employees(new_employee)
    @employees << new_employee
  end


end

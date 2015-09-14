class Employee
  attr_accessor :name, :email, :phone, :salary, :review, :satisfactorily
  def initialize(name, email = "", phone = "", salary = 0, review = "", satisfactorily = false)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @review = review
    @satisfactorily = satisfactorily
    #@raise_the_roof = raise_the_roof
  end

  def add_employees(new_employee)
    @employees << new_employee
  end

  # def raise_the_roof (amount)
  #   @salary += amount
  # end

end

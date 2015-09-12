class Department
  attr_reader :name, :email, :phone, :salary
  def initialize(department)
    @department = department
    @name = name
  end

  def department(department)
    @department = department
  end

end

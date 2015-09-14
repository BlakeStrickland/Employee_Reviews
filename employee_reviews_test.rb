require 'minitest/autorun'
require 'minitest/pride'
require './employee_review.rb'

class EmployeeReviewsTest < Minitest::Test

  def test_initialize
    assert Department.new("Education")
    assert_raises(ArgumentError) do
      Department.new
    end
  end

  def test_new_employee
    alice = Employee.new("Alice", "Wonderland@wall.com", "919-234-6532", "$50,000")
    assert Employee.new(alice)
  end

  def test_employee_to_department
    education = Department.new("Education")
    alice = Employee.new("alice", "Wonderland@wall.com", "919-234-6532", "$50,000")
    red_queen = Employee.new("Red Queen", "Egocentric@narcissitic.com", "535-764-6334", 40000)

    education.add_employees(alice)
    assert_equal [alice], education.employees
  end

  def test_employee_name
    assert_equal "Alice", Employee.new("Alice", "Wonderland@wall.com", "919-234-6532", "$50,000").name
  end

  def test_employee_salary
    assert_equal "$50,000", Employee.new("Alice", "Wonderland@wall.com", "919-234-6532", "$50,000").salary
  end

  def test_department_name
    assert_equal "Education", Department.new("Education").department_name
  end

  def test_department_salary
    engineering = Department.new("Engineering")
    mad_hatter = Employee.new("Mad Hatter", "KooKooKachoo@teatime.com", "650-456-6543", 120000)
    engineering.add_employees(mad_hatter)
    red_queen = Employee.new("Red Queen", "Egocentric@narcissitic.com", "535-764-6334", 40000)
    engineering.add_employees(red_queen)
    cheshire_the_cat = Employee.new("Cheshire the Cat", "Katnip@madness.com", "234-452-3554", 100000)
    engineering.add_employees(cheshire_the_cat)
    #assert engineering.department_salary == 260000
    assert_equal 260000, engineering.department_salary
  end

  def test_add_review
    cheshire_the_cat = Employee.new("Cheshire the Cat", "Katnip@teatime.com", "234-452-3554", 100000)
    cheshire_the_cat.review = "test review"
    assert_equal "test review", cheshire_the_cat.review
  end

  def test_satisfactorily
    mad_hatter = Employee.new("Mad Hatter", "KooKooKachoo@teatime.com", "650-456-6543", 120000)
    mad_hatter.satisfactorily = true
    assert_equal true, mad_hatter.satisfactorily
  end

  # def test_raise
  #   red_queen = Employee.new("Red Queen", "Egocentric@narcissitic.com", "535-764-6334", 40000)
  #   red_queen.satisfactorily = true
  #   assert_equal 48000, red_queen.raise_the_roof(8000)
  #
  # end
  # def test_raise
  #   department = Department.new("Crystal Palace")
  #   red_queen = Employee.new("Red Queen", "Egocentric@narcissitic.com", "535-764-6334", 40000)
  #   red_queen.satisfactorily = true
  #   department.raise_the_roof("Red Queen", 8000)
  # end
end

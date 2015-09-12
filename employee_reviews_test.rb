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
      assert Employee.new("Alice", "Wonderland@wall.com", "919-234-6532", "$50,000")
  end

  def test_employee_to_department
      assert Department.new("Alice", "Department of Engineering")
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




end

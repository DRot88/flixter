require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "that it has a valid factory?" do
    course = FactoryGirl.create(:course)
    assert(course, :valid)
  end

  test "is valid with a known set of valid inputs" do
    course = FactoryGirl.build(:course, title: "The best course ever", cost: 1.99, description: "This is a description")

    assert(course.save)
  end


end

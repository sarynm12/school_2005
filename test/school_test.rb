require 'minitest/autorun'
require 'minitest/pride'
require './lib/school'
require 'pry'

class SchoolTest < Minitest::Test

  def test_it_exists
    school = School.new('9:00', 7)
    assert_instance_of School, school
  end

  def test_it_has_a_start_time
    school = School.new('9:00', 7)
    assert_equal '9:00', school.start_time
  end

  def test_it_knows_hours_in_a_school_day
    school = School.new('9:00', 7)
    assert_equal 7, school.hours
  end

  def test_it_starts_with_no_students
    school = School.new('9:00', 7)
    assert_equal [], school.student_names
  end

  def test_it_can_add_students
    school = School.new('9:00', 7)
    school.add_student_name('Aurora')
    school.add_student_name('tim')
    school.add_student_name('megan')
    assert_equal ["Aurora", "tim", "megan"], school.student_names
  end

  def test_it_can_calculate_end_time
    school = School.new('9:00', 7)
    assert_equal "16:00", school.end_time
  end

  def test_it_knows_if_full_time
    school = School.new('9:00', 7)
    assert_equal true, school.is_full_time?
  end

  def test_it_can_standardize_names
    school = School.new('9:00', 7)
    school.add_student_name('Aurora')
    school.add_student_name('tim')
    school.add_student_name('megan')
    assert_equal ["Aurora", "Tim", "Megan"], school.standard_student_names
  end

  def test_can_convert_to_clock_time
    school = School.new('9:00', 7)
    assert_equal "4:00", school.convert_end_time_to_clock_time
  end

end

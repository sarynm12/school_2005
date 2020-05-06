require 'minitest/autorun'
require 'minitest/pride'
require './lib/school'

class SchoolTest < Minitest::Test
  #Iteration 1 Tests:
  def test_it_exists
    school = School.new('9:00', 7)

    assert_instance_of School, school
  end

  def test_it_has_start_time
    school = School.new('9:00', 7)

    assert_equal '9:00', school.start_time
  end

  def test_it_has_hours_in_school_day
    skip
    school = School.new('9:00', 7)

    assert_equal 7, school.hours_in_school_day
  end

  def test_it_starts_with_no_student_names
    school = School.new('9:00', 7)
    student_names = []
    assert_equal [], school.student_names
  end

  #Iteration 2 Tests:
  def test_it_can_add_student_names
    skip
    school = School.new('9:00', 7)
    #names = 'Aurora', 'tim', 'megan'
    school.add_student_name('Aurora')
    school.add_student_name('tim')
    school.add_student_name('megan')

    assert_equal ['Aurora', 'tim', 'megan'], school.student_names
  end

  def test_it_can_calculate_end_time
    #school1 = School.new('9:00', 7)
    #school2 = School.new('9:00', 3
    #assert_equal '16:00', school1.end_time
    #assert_equal '12:00', school2.end_time
  end

  #Iteration 3 Tests:
  def test_is_school_full_time
    school = School.new('9:00', 7)
    if school.hours > 4
      full_time = true
    end

    assert full_time
  end

  def test_student_names_standard
    school = School.new ('9:00', 7)
    names = ['Aurora', 'tim', 'megan']
    expected = names.map do |name|
      name.capitalize
    end
  end
    assert_equal['Aurora', 'Tim', 'Megan'], expected

end

#Wow, I'm so sorry I didn't finish

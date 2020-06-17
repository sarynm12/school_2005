require 'pry'

class School
  attr_reader :start_time, :hours, :student_names

  def initialize(start_time, hours)
    @start_time = start_time
    @hours = hours
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    end_hour = @start_time.to_i + @hours
    "#{end_hour}:00"
  end

  def is_full_time?
    if @hours >= 4
      true
    end
  end

  def standard_student_names
    @student_names.map do |name|
      name.capitalize
    end
  end

  def convert_end_time_to_clock_time
    end_hour = @start_time.to_i + @hours
    new = end_hour - 12
    "#{new}:00"
  end

end

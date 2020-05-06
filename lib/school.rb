class School
  attr_reader :start_time, :hours

  def initialize(start_time, hours)
    @start_time = start_time
    @hours = hours 
  end

  def hours
    @hours
  end

  def name
    @name = name
  end

  def student_names
    []
  end

  def add_student_name(name)
    name.each do |name|
      student_names << name
    end
  end

  def end_time
    @start_time + @hours.to_s
  end

  #def full_time
    #if @hours > 4
      #full_time = true
    #end
  #end

end

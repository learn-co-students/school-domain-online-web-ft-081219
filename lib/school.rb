class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade_level)
    if @roster[grade_level]
      @roster[grade_level] << name
    else 
      @roster[grade_level] = []
      @roster[grade_level] << name
    end
  end
  
  
  def grade(grade_level)
    @roster[grade_level]
  end
  
  def sort
    @roster.each do |name, grade_level|
      grade_level.sort!
    end
  end
end

class School
  attr_accessor :roster, :name 

  def initialize (name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else 
      @roster[grade] = [] # @roster.key?{grade}
      @roster[grade] << student 
    end 
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort 
    @roster.each do |grade, name|
      name.sort! # @roster.each_value( &:sort! )
    end
  end 
end
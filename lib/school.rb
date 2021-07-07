# code here!
require 'pry'


class School

    attr_accessor :roster



  def initialize(schoolname)
      @name = schoolname
      @roster = {}

  end

  def name=(name)
      @name = name
  end

  def name
    @name
  end


  def add_student(studentname, grade)


    if  @roster[grade]
        @roster[grade] << studentname
    else
      @roster[grade] = []
      @roster[grade] << studentname
    end
  end

  def grade(grade)
      @roster[grade]
  end


  def sort
    @roster.each do |grade, names|

      names.sort!
    end
    return @roster

  end
end

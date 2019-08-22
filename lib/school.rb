require 'pry'
class School
  
  attr_accessor :name, :roster
  #attr_writer :add_student
  
  def initialize(name)
    @name = name
    #@roster = roster
    @roster = {}
  end 
  
  
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name

  end
  
  def grade(grade)
   roster[grade]
   end  
   
  def sort 
    sorted = {} 
    roster.each do |grade, names|
      sorted[grade] = names.sort
    end 
   sorted 
  end
  
end 



class School 
 attr_accessor :name, :roster
 def initialize(name)
  @name = name
  @roster = {}
end

def add_student(student,grade)
  if @roster[grade] #if roster has a key of grade
    @roster[grade]<< student #add students name
  else
    @roster[grade]=[] 
    #if roster doesn't have a grade key make an array for that grade
     @roster[grade]<< student #add student to new grade key
  end
end
def grade(grade) #given a grade 
  @roster[grade] #reports the students in the grade
end
def sort
  new_grades = {} #create a new hash for sort
  @roster.each do |grade, student| 
   new_grades[grade] = student.sort 
   #new_grades hash with key of grade puts students sorted 
     
  end
  new_grades
end
end
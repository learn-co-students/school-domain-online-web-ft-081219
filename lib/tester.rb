class School

    attr_accessor :roster
 
     def initialize(name)
         @name = name
         @roster = {}
         
     end
 
     def add_student(name, grade)
         if roster.keys.include?(grade)
            
             roster[grade] << name
         else
             roster[grade] = []
             roster[grade] << name
         end
     end
 
     def grade(grade)
         @roster[grade]
     end
 
     def sort
        puts "doing sort"
         @roster.map do |grade|
           
             grade[1] = grade[1].sort!
             
             
         end
         @roster
     end
 
  end

school = School.new('test')
school.add_student("Homer Simpson", 9)
      school.add_student("Bart Simpson", 9)
      school.add_student("Avi Flombaum", 10)
      school.add_student("Jeff Baird", 10)
      school.add_student("Blake Johnson", 7)
      school.add_student("Jack Bauer", 7)

puts school.roster
puts school.sort

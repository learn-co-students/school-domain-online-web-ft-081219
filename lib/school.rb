# code here!
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

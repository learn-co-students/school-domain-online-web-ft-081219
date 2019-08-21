class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, level)
    # ||= [] is equal too a || a = b
    roster[level] ||= []
    roster[level] << student
  end

  def grade(level)
    roster.detect do |a, b|
      if a == level
        return b
      end
    end
  end

def sort
  new_hash = {}
  roster.each do |a, b|
    new_hash[a] = b.sort
  end
  new_hash
end

end



school = School.new("Bayside High School")
school.roster
school.add_student("Zach Morris", 8)
school.add_student("Homer Simpson", 7)
school.add_student("Jeff Baird", 9)
school.roster
school.add_student("Avi Flombaum", 6)
school.roster
school.add_student("Bart Simpson", 5)
school.add_student("Blake Johnson", 4)
school.roster
school.grade(9)
school.sort

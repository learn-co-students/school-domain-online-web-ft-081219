class School
attr_accessor :name, :roster

# def name=(name)
#     @name = name
# end

# def name
#     @name
# end

# def roster=(roster)
#     @roster = roster
# end

# def roster
#     @roster
# end

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if @roster[grade]
            @roster[grade] << student
        else
            @roster[grade] = []
            @roster[grade] << student
    end
end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each_value(&:sort!)
    end
    end

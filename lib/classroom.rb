class Classroom
    attr_reader :subject, :capacity, :students
    def initialize(subject, capacity)
        @subject = subject
        @capacity = capacity
        @students = []
    end 

    def add_student(student)
        @students << student
    end

    def yell_at_students
        @students.map do |student|
            student.upcase
        end
    end

    def over_capacity?
        if @students.count < 4
             false
        else @students.count >= 4
             true
        end 
    end 

    def kick_out
        @students.shift
    end

        

end



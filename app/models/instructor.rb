require 'pry'

class Instructor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def all_students
    end

    def passed_students
        #Student.all.select{|student| student.test_status == "passed"}
    end
    
    def pass_student(student, test_status)
        #change Student.all.test_status = "pass"
    end

    def fail_student(student, test_status)
        #If student.test_status == 
        #change BoatingTest.all.test_status = "fail"
    end

end

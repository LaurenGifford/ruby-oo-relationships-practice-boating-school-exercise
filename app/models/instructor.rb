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

    def all_tests
        BoatingTest.all.select{|test| test.instructor == self}
    end 

    def all_students
        self.all_tests.collect{|test| test.student}
    end

    def passed_students
        passed_tests = self.all_tests.select{|test| test.test_status == "passed"}
        passed_tests.map{|test| test.student}
    end
    
    def find_student(name)
        Student.all.find{|student| student.first_name == name}
    end

    def find_test(test_name)
        BoatingTest.all.find{|test| test.test_name == test_name}
    end

    def pass_student(name, test_name)
        test = find_test(test_name)
        student = find_student(name)

       if test && test.student.student_name == name
        test.test_status = "passed"
       else
        BoatingTest.new(student, test_name, "passed", self)
       end
    end

    def fail_student(student, test_status)
        test = find_test(test_name)
        student = find_student(name)

       if test && test.student.student_name == name
        test.test_status = "failed"
       else
        BoatingTest.new(student, test_name, "failed", self)
       end
    end

end

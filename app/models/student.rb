class Student

    attr_accessor :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def all_student_tests
        BoatingTest.all.select{|test| test.student == self}
    end

    def all_instructors
        self.all_student_tests.collect{|test| test.instructor}
    end

    def self.find_student(first_name)
        self.all.find{|student| student.first_name == first_name}
    end

    def grade_percentage
        passed_tests = self.all_student_tests.select{|test| test.test_status == "passed"}
        passed_total = passed_tests.count.to_f

        total_tests = self.all_student_tests
        total_taken = total_tests.count.to_f

        percent = (passed_total/total_taken)*10
    end
end

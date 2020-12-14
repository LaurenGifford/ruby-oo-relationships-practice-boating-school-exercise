require 'pry'
require_relative '../config/environment.rb'
def reload
  load 'config/environment.rb'
end

#Instructors
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

#Students
sponge_bob = Student.new("Spongebob")
sandy = Student.new("Sandy")
patrick = Student.new("Patrick")

#Suggested test info
no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

#BoatingTest
# test1 = BoatingTest.new(sponge_bob, "Don't crash", "failed", krabs)
# test2 = BoatingTest.new(sandy, "Don't crash", "pending", krabs)
# test3 = BoatingTest.new(patrick, "Check mirrors", "failed", puff)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line


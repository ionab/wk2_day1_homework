require ('minitest/autorun')
require_relative('../codeclan_student.rb')

### Part A

# For this part we want you to make a class that represents a CodeClan student.
#
# * Create a class called Student that takes in a name
#(String) and a cohort (integer) when an new instance is created.
# * Create a couple of Getter methods, one that returns the name
#property and one that returns the cohort property of the student.
# * Add in Setter methods to update the students name and what cohort they are in.
# * Create a method that gets the student to talk (eg. Returns "I can talk!).
# * Create a method that takes in a students favourite programming
#language and returns it as part of a string (eg. `student1.say_favourite_language("Ruby")` -> "I love Ruby").

class TestStudent < MiniTest::Test
  def setup()  # you can use this setup function, which will run at the start of every test
      @codeclan_student = Student.new("Kelsie", 5)
  end
  def test_student_name
    assert_equal("Kelsie", @codeclan_student.student_name)
  end
  def test_student_cohort
    assert_equal(5, @codeclan_student.student_cohort)
  end
  def test_set_student_name
    @codeclan_student.set_student_name("Iona")
    assert_equal("Iona", @codeclan_student.student_name)
  end
end
